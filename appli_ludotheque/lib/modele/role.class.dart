import '../connexion.dart';
import 'detient.class.dart';

class Role {
  final int idRole;
  final String nomRole;
  final String descRole;

  Role({
    required this.idRole,
    required this.nomRole,
    required this.descRole,
  });

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      idRole: map['id_role'],
      nomRole: map['nom_role'],
      descRole: map['desc_role'],
    );
  }

  // Pour récupérer tous les rôles
  static Future<List<Role>> fetchAll() async {
    var conn = await Connexion.getConnexion();

    // Vérification si la connexion est valide
    if (conn == null) {
      print('Connexion échouée');
      return [];  // Retourne une liste vide si la connexion échoue
    }

    try {
      final results = await conn.query('SELECT * FROM ROLE');

      List<Role> roles = results.map((row) {
        return Role.fromMap(row.fields);
      }).toList();

      return roles;
    } catch (e) {
      print('Erreur lors de la récupération des rôles : $e');
      return [];
    } finally {
      await conn.close();
    }
  }

  // Pour récupérer les permissions associées au rôle
  Future<List<int>> getPermissions() async {
    return await Detient.fetchPermissionsByRole(idRole);
  }
}