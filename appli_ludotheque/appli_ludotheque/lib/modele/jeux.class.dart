import '../connexion.dart';
import 'contient.class.dart';

class Jeu {
  final int idJeu;
  final String titreJeu;
  final String descJeu;
  final DateTime dateAjout;
  final DateTime? datePublication;
  final bool disponible;
  final String lienImg;
  final String lienYT;
  final DateTime? dateDerniereModif;
  final DateTime? dateArchivage;
  final DateTime? dateSuppression;

  Jeu({
    required this.idJeu,
    required this.titreJeu,
    required this.descJeu,
    required this.dateAjout,
    this.datePublication,
    required this.disponible,
    required this.lienImg,
    required this.lienYT,
    this.dateDerniereModif,
    this.dateArchivage,
    this.dateSuppression,
  });

  factory Jeu.fromMap(Map<String, dynamic> map) {
    return Jeu(
      idJeu: map['id_jeu'],
      titreJeu: map['titre_jeu'],
      descJeu: map['desc_jeu'],
      dateAjout: DateTime.parse(map['date_ajout']),
      datePublication: map['date_publication'] != null
          ? DateTime.parse(map['date_publication'])
          : null,
      disponible: map['disponible'] == 1,
      lienImg: map['lien_img'],
      lienYT: map['lien_yt'],
      dateDerniereModif: map['date_derniere_modif'] != null
          ? DateTime.parse(map['date_derniere_modif'])
          : null,
      dateArchivage: map['date_archivage'] != null
          ? DateTime.parse(map['date_archivage'])
          : null,
      dateSuppression: map['date_suppression'] != null
          ? DateTime.parse(map['date_suppression'])
          : null,
    );
  }

  //Pour récupérer tous les jeux
  static Future<List<Jeu>> fetchAll() async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query('SELECT * FROM JEUX');

      List<Jeu> jeux = results.map((row) {
        return Jeu.fromMap(row.fields);
      }).toList();

      return jeux;
    } catch (e) {
      print('Erreur lors de la récupération des jeux : $e');
      return [];
    } finally {
      await conn.close();
    }
  }

  //Pour récupérer un jeu spécifique par ID
  static Future<Jeu?> fetchById(int idJeu) async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query(
        'SELECT * FROM JEUX WHERE id_jeu = ?',
        [idJeu],
      );

      if (results.isNotEmpty) {
        return Jeu.fromMap(results.first.fields);
      } else {
        return null;
      }
    } catch (e) {
      print('Erreur lors de la récupération du jeu $idJeu : $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  //Pour récupérer les tags associés au jeu
  Future<List<int>> getTags() async {
    return await Contient.fetchTagsByJeu(idJeu);
  }

  
}
