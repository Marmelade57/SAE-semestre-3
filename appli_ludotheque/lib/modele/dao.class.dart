import 'dart:convert';
import 'package:http/http.dart' as http;

class DAO {
  final String baseUrl = 'http://51.38.64.145/test_connexion.php';

  Future<bool> insert(String table, Map<String, dynamic> data) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl?table=$table&action=insert'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );

      if (response.statusCode == 200) {
        var result = json.decode(response.body);
        return result['status'] == 'success';
      }
    } catch (e) {
      print('Erreur lors de l\'insertion dans $table : $e');
    }
    return false;
  }

  Future<bool> update(String table, Map<String, dynamic> data) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl?table=$table&action=update'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );

      if (response.statusCode == 200) {
        var result = json.decode(response.body);
        return result['status'] == 'success';
      }
    } catch (e) {
      print('Erreur lors de la mise à jour dans $table : $e');
    }
    return false;
  }

  Future<List<Map<String, dynamic>>> getAll(String table) async {
    try {
      final response =
          await http.get(Uri.parse('$baseUrl?table=$table&action=getAll'));

      print(response.body);

      if (response.statusCode == 200 && response.body.isNotEmpty) {
        try {
          var result = json.decode(response.body);
          return List<Map<String, dynamic>>.from(result);
        } catch (e) {
          print('Erreur lors du parsing du JSON : $e');
        }
      } else {
        print('Réponse vide ou invalide');
      }
    } catch (e) {
      print('Erreur lors de la récupération des données de $table : $e');
    }
    return [];
  }

  Future<bool> delete(String table, Map<String, dynamic> identifier) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl?table=$table&action=delete'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(identifier),
      );

      if (response.statusCode == 200) {
        var result = json.decode(response.body);
        return result['status'] == 'success';
      }
    } catch (e) {
      print('Erreur lors de la suppression dans $table : $e');
    }
    return false;
  }
}
