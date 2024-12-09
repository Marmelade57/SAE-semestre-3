import 'package:mysql1/mysql1.dart';

class Connexion {
  static Future<MySqlConnection> getConnexion() async {
    return await MySqlConnection.connect(ConnectionSettings(
      host: '51.38.64.145',
      port: 3306,
      user: 'sae',
      password: '301',
      db: 'SAE301',
    ));
  }
}
