import '../connexion.dart';

class Concerne {
  final int idJeu;
  final int idActu;

  Concerne({
    required this.idJeu,
    required this.idActu,
  });

  factory Concerne.fromMap(Map<String, dynamic> map) {
    return Concerne(
      idJeu: map['id_jeu'],
      idActu: map['id_actu'],
    );
  }

  // Méthode pour récupérer tous les jeux associés à une actualité
  static Future<List<int>> fetchJeuxByActualite(int idActu) async {
    final conn = await Connexion.getConnexion();

    // Vérification de la connexion
    if (conn == null) {
      print('Erreur : Connexion à la base de données échouée');
      return []; // Retourne une liste vide si la connexion échoue
    }

    try {
      final results = await conn.query(
        'SELECT id_jeu FROM CONCERNE WHERE id_actu = ?',
        [idActu],
      );

      // On retourne la liste des `id_jeu`
      return results.map((row) => row['id_jeu'] as int).toList();
    } catch (e) {
      // Gestion des erreurs
      print("Erreur lors de la récupération des jeux pour l'actualité $idActu : $e");
      return []; // Retourne une liste vide en cas d'erreur
    } finally {
      // Fermeture de la connexion
      await conn.close();
    }
  }

  // Méthode pour récupérer toutes les actualités associées à un jeu
  static Future<List<int>> fetchActualitesByJeu(int idJeu) async {
    final conn = await Connexion.getConnexion();

    // Vérification de la connexion
    if (conn == null) {
      print('Erreur : Connexion à la base de données échouée');
      return []; // Retourne une liste vide si la connexion échoue
    }

    try {
      final results = await conn.query(
        'SELECT id_actu FROM CONCERNE WHERE id_jeu = ?',
        [idJeu],
      );

      // On retourne la liste des `id_actu`
      return results.map((row) => row['id_actu'] as int).toList();
    } catch (e) {
      // Gestion des erreurs
      print('Erreur lors de la récupération des actualités pour le jeu $idJeu : $e');
      return []; // Retourne une liste vide en cas d'erreur
    } finally {
      // Fermeture de la connexion
      await conn.close();
    }
  }
}
