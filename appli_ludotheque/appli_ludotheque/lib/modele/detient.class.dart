
import "../connexion.dart";
class Detient{
  final int idRole;
  final int idPerm;


  Detient({
    required this.idRole,
    required this.idPerm,
  });

  factory Detient.fromMap(Map<String, dynamic> map) {
    return Detient(
      idRole: map['id_role'],
      idPerm: map['id_perm'],
    );
  }

  //Méthode pour récupérer tout les permissions associés à un rôle
  static Future<List<int>> fetchPermsByRole(int idRole) async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query(
        'SELECT id_perm FROM DETIENT WHERE id_role = ?',
        [idRole],
      );

      // On retourne la liste des `id_perm`
      return results.map((row) => row['id_perm'] as int).toList();
    } catch (e) {
      print('Erreur lors de la récupération des tags pour le jeu $idRole : $e');
      return [];
    } finally {
      await conn.close();
    }
  }

  
  //Méthode pour récupérer tout les permissions associés à un rôle
  static Future<List<int>> fetchRolesByPerm(int idPerm) async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query(
        'SELECT id_role FROM DETIENT WHERE id_perm = ?',
        [idPerm],
      );

      // On retourne la liste des `id_perm`
      return results.map((row) => row['id_role'] as int).toList();
    } catch (e) {
      print('Erreur lors de la récupération des tags pour le jeu $idPerm : $e');
      return [];
    } finally {
      await conn.close();
    }
  }

}