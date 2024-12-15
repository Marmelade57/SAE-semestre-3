import "../connexion.dart";
import 'contient.class.dart';

class Tag{
  final int idTag ;
  final String nom;
  final String description;
  final String typeTag;

  Tag({
    required this.idTag,
    required this.nom,
    required this.description,
    required this.typeTag,
  });

factory Tag.fromMap(Map<String, dynamic> map) {
    return Tag(
      idTag: map['id_tag'],
      nom: map['nom_tag'],
      description: map['desc_tag'],
      typeTag: map['type_tag'],
    );
  }


    //Pour récupérer tous les tags
  static Future<List<Tag>> fetchAll() async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query('SELECT * FROM TAG');

      List<Tag> tags = results.map((row) {
        return Tag.fromMap(row.fields);
      }).toList();

      return tags;
    } catch (e) {
      print('Erreur lors de la récupération des tags : $e');
      return [];
    } finally {
      await conn.close();
    }
  }

  //Pour récupérer un tag spécifique par ID
  static Future<Tag?> fetchById(int idTag) async {
    final conn = await Connexion.getConnexion();

    try {
      final results = await conn.query(
        'SELECT * FROM TAG WHERE id_tag = ?',
        [idTag],
      );

      if (results.isNotEmpty) {
        return Tag.fromMap(results.first.fields);
      } else {
        return null;
      }
    } catch (e) {
      print('Erreur lors de la récupération du tag $idTag : $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  //Pour récupérer les jeux associés au tag
  Future<List<int>> getJeux() async {
    return await Contient.fetchJeuxByTag(idTag);
  }
}