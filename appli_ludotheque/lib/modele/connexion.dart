import 'dart:convert';
import 'package:http/http.dart' as http;

class Connexion {
  final String url = 'http://nounours.de/test_connexion.php';

  Future<List<dynamic>> getAllData(String tableName) async {
    List<dynamic> allData = [];

    try {
      final response = await http.get(Uri.parse('$url?table=$tableName'));
      if (response.statusCode == 200) {
        allData = json.decode(response.body);
      } else {
        print('Erreur : ${response.statusCode}');
      }
    } catch (e) {
      print('Erreur lors de la récupération des données : $e');
    }

    return allData;
  }
}
