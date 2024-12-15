import '../connexion.dart';

class Contient {
  final int idTag;
  final int idJeu;

  Contient({
    required this.idTag,
    required this.idJeu,
  });

  factory Contient.fromMap(Map<String, dynamic> map) {
    return Contient(
      idTag: map['id_tag'],
      idJeu: map['id_jeu'],
    );
  }

  // Méthode pour récupérer tous les tags associés à un jeu
  static Future<List<int>> fetchTagsByJeu(int idJeu) async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query(
        'SELECT id_tag FROM CONTIENT WHERE id_jeu = ?',
        [idJeu],
      );

      // On retourne la liste des `id_tag`
      return results.map((row) => row['id_tag'] as int).toList();
    } catch (e) {
      print('Erreur lors de la récupération des tags pour le jeu $idJeu : $e');
      return [];
    } finally {
      await conn.close();
    }
  }

  // Méthode pour récupérer tous les jeux associés à un tag
  static Future<List<int>> fetchJeuxByTag(int idTag) async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query(
        'SELECT id_jeu FROM CONTIENT WHERE id_tag = ?',
        [idTag],
      );

      // On retourne la liste des `id_jeu`
      return results.map((row) => row['id_jeu'] as int).toList();
    } catch (e) {
      print('Erreur lors de la récupération des jeux pour le tag $idTag : $e');
      return [];
    } finally {
      await conn.close();
    }
  }
}
