import 'package:mysql1/mysql1.dart';
// import 'package:http/http.dart';

class Connexion{
  Future<MySqlConnection> connexion() async{
    final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'https://devweb.iutmetz.univ-lorraine.fr/phpmyadmin/',
      port: 0,
      user: 'identifiant_appli',
      password: 'motDePasse',
      db: 'identifiant_sae301'
    ));

    final result = await conn.query('SELECT * FROM UTILISATEUR');
    for (var row in result) {
      print('id: ${row['id_user']}, nom: ${row['nom_user']}, prénom: ${row['prenom_user']}');
    }
    return conn;
  }
}
