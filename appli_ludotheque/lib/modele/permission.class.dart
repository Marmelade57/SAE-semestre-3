import '../connexion.dart';
import 'detient.class.dart';

class Permission {
  final int idPerm;
  final String nomPerm;
  final String descPerm;

  Permission({
    required this.idPerm,
    required this.nomPerm,
    required this.descPerm
  });

  factory Permission.fromMap(Map<String, dynamic> map) {
    return (
      idPerm: map['id_perm'],
      nomPerm: map['nom_perm'],
      descPerm: map['desc_perm']
    );
  }

  //Pour récupérer toutes les permissions
  static Future<List<Permission>> fetchAll() async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query('SELECT * FROM PERMISSION');

      List<Permission> permissions = results.map((row) {
        return Permission.fromMap(row.fields);
      }).toList();

      return permissions;
    } catch (e) {
      print('Erreur lors de la récupération des permissions : $e');
      return [];
    } finally {
      await conn.close();
    }
  }

  //Pour récupérer les roles associés à la permission
  Future<List<int>> getRoles() async {
    return await Detient.fetchRolesByPermission(idPerm);
  }

  
}