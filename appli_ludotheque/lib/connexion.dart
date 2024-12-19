import 'package:mysql1/mysql1.dart';

class Connexion {
  static Future<MySqlConnection?> getConnexion() async {
    try {
      // Configuration de la connexion à la base de données
      var settings = ConnectionSettings(
        host: '51.38.64.145',
        port: 3306,
        user: 'your_username',
        password: 'your_password',
        db: 'your_database',
      );

      // Connexion à la base de données
      var conn = await MySqlConnection.connect(settings);

      // Si la connexion réussit, on retourne la connexion
      return conn;
    } catch (e) {
      print('Erreur de connexion : $e');
      return null;  // Retourne null si la connexion échoue
    }
  }
}