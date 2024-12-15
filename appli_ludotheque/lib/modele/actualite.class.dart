import '../connexion.dart';
import 'concerne.class.dart';

class Actualite {
  final int idActu;
  final String nomActu;
  final String descActu;
  final String lienImg;
  final DateTime? dateActu;

  Actualite({
    required this.idActu,
    required this.nomActu,
    required this.descActu,
    required this.lienImg,
    this.dateActu
  });

  factory Actualite.fromMap(Map<String, dynamic> map) {
    return Actualite(
      idActu: map['id_actu'],
      nomActu: map['nom_actu'],
      descActu: map['desc_actu'],
      lienImg: map['lien_image'],
      dateActu: DateTime.parse(map['date_actu'])
    );
  }

  //Pour récupérer toutes les actualités
  static Future<List<Actualite>> fetchAll() async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query('SELECT * FROM ACTUALITE');

      List<Actualite> actualites = results.map((row) {
        return Actualite.fromMap(row.fields);
      }).toList();

      return actualites;
    } catch (e) {
      print('Erreur lors de la récupération des actualités : $e');
      return [];
    } finally {
      await conn.close();
    }
  }

  //Pour récupérer une actualité spécifique par ID
  static Future<Actualite?> fetchById(int idActu) async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query(
        'SELECT * FROM ACTUALITE WHERE id_actu = ?',
        [idActu],
      );

      if (results.isNotEmpty) {
        return Actualite.fromMap(results.first.fields);
      } else {
        return null;
      }
    } catch (e) {
      print("Erreur lors de la récupération de l'actualité $idActu : $e");
      return null;
    } finally {
      await conn.close();
    }
  }

  //Pour récupérer les jeux associés à l'actualité
  Future<List<int>> getJeux() async {
    return await Concerne.fetchJeuxByActualite(idActu);
  }

  
}