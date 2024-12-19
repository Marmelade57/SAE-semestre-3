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
    
    // Vérification de la connexion
    if (conn == null) {
      print('Erreur : Connexion à la base de données échouée');
      return []; // Retourne une liste vide si la connexion échoue
    }

    try {
      final results = await conn.query('''
        SELECT u.*, r.id_role, r.nom_role, r.desc_role
        FROM UTILISATEUR u
        LEFT JOIN ROLE r ON u.id_role = r.id_role
      ''');

      List<Utilisateur> utilisateurs = results.map((row) {
        // Si le rôle existe, on le crée
        Role? role;
        if (row['id_role'] != null) {
          role = Role(
            idRole: row['id_role'],
            nomRole: row['nom_role'],
            descRole: row['desc_role'],
          );
        }
        // On crée et retourne l'utilisateur avec son rôle
        return Utilisateur.fromMap(row.fields, role: role);
      }).toList();

      return utilisateurs;
    } catch (e) {
      // Gestion des erreurs
      print('Erreur lors de la récupération des utilisateurs : $e');
      return []; // Retourne une liste vide en cas d'erreur
    } finally {
      // Fermeture de la connexion
      await conn.close();
    }
  }
}
