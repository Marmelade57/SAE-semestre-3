import "../connexion.dart";
import 'contient.class.dart';

class Tag {
  final int idTag;
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

  // Pour récupérer tous les tags
  static Future<List<Tag>> fetchAll() async {
    // Connexion à la base de données
    final conn = await Connexion.getConnexion();
    
    // Vérification de la connexion
    if (conn == null) {
      print('Erreur : Connexion à la base de données échouée');
      return []; // Retourne une liste vide si la connexion échoue
    }

    try {
      // Récupération des résultats
      final results = await conn.query('SELECT * FROM TAG');

      // Transformation des résultats en liste d'objets Tag
      List<Tag> tags = results.map((row) {
        return Tag.fromMap(row.fields);
      }).toList();

      return tags;
    } catch (e) {
      // Gestion des erreurs
      print('Erreur lors de la récupération des tags : $e');
      return [];
    } finally {
      // Fermeture de la connexion
      await conn.close();
    }
  }

  // Pour récupérer un tag spécifique par ID
  static Future<Tag?> fetchById(int idTag) async {
    // Connexion à la base de données
    final conn = await Connexion.getConnexion();
    
    // Vérification de la connexion
    if (conn == null) {
      print('Erreur : Connexion à la base de données échouée');
      return null; // Retourne null si la connexion échoue
    }

    try {
      // Récupération du tag par ID
      final results = await conn.query(
        'SELECT * FROM TAG WHERE id_tag = ?',
        [idTag],
      );

      if (results.isNotEmpty) {
        // Si le tag est trouvé, on le retourne
        return Tag.fromMap(results.first.fields);
      } else {
        // Si aucun tag n'est trouvé, on retourne null
        return null;
      }
    } catch (e) {
      // Gestion des erreurs
      print('Erreur lors de la récupération du tag $idTag : $e');
      return null;
    } finally {
      // Fermeture de la connexion
      await conn.close();
    }
  }

  // Pour récupérer les jeux associés au tag
  Future<List<int>> getJeux() async {
    try {
      // Appel à la méthode de la classe Contient pour récupérer les jeux
      return await Contient.fetchJeuxByTag(idTag);
    } catch (e) {
      print('Erreur lors de la récupération des jeux associés au tag $idTag : $e');
      return []; // Retourne une liste vide en cas d'erreur
    }
  }
}
