import '../connexion.dart';
import 'role.class.dart';

class Utilisateur {
  final int idUser;
  final String nomUser;
  final String prenomUser;
  final Role? role;

  Utilisateur({
    required this.idUser,
    required this.nomUser,
    required this.prenomUser,
    this.role,
  });

  factory Utilisateur.fromMap(Map<String, dynamic> map, {Role? role}) {
    return Utilisateur(
      idUser: map['id_user'],
      nomUser: map['nom_user'],
      prenomUser: map['prenom_user'],
      role: role,
    );
  }

  static Future<List<Utilisateur>> fetchAll() async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query('''
        SELECT u.*, r.nom_role, r.desc_role
        FROM UTILISATEUR u
        LEFT JOIN ROLE r ON u.id_role = r.id_role
      ''');

      List<Utilisateur> utilisateurs = results.map((row) {
        Role? role;
        if (row['id_role'] != null) {
          role = Role(
            idRole: row['id_role'],
            nomRole: row['nom_role'],
            descRole: row['desc_role'],
          );
        }
        return Utilisateur.fromMap(row.fields, role: role);
      }).toList();

      return utilisateurs;
    } catch (e) {
      print('Erreur : $e');
      return [];
    } finally {
      await conn.close();
    }
  }
}