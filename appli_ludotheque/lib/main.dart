import 'package:appli_ludotheque/pages/page_erreur.dart';
import 'package:flutter/material.dart';
import 'pages/page_accueil.dart';
import 'pages/page_jeu.dart';
import 'pages/page_resultat_recherche.dart';
import 'pages/page_actualites.dart';
import 'pages/page_actualite.dart';
import 'pages/page_presentation.dart';
import 'pages/admin/page_admin_accueil.dart';
import 'pages/admin/page_admin_creation_jeu.dart';
import 'pages/admin/page_admin_modif_jeu.dart';
import 'pages/admin/page_admin_creation_actualite.dart';
import 'pages/admin/page_admin_modif_actualite.dart';
import 'pages/page_connexion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludothèque', // possibilité de faire un thème nuit
      theme: ThemeData( // la police d'écriture est à changer dans pubspec.yaml
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: Colors.red,
          onPrimary: Colors.pink,
          secondary: Colors.blue,
          onSecondary: Colors.blueGrey,
          tertiary: Colors.lime,
          onTertiary: Colors.orange,
          surface: Colors.grey, // fond quand le scaffold n'est pas défini
          onSurface: Colors.black, // texte
          ),
          iconTheme: const IconThemeData(
            color:  Color(0xFF000000),
          ),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Color.fromARGB(255, 242, 166, 99),
            scrimColor: Color.fromARGB(128, 255, 255, 255),
          ),
          listTileTheme: ListTileThemeData(
            iconColor: Color.fromARGB(255, 13, 26, 38),
            textColor: Color.fromARGB(255, 13, 26, 38),
          ),
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 242, 166, 99),// Color.fromARGB(255, 191, 65, 36), // là où il y a accueil et le menu
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          scaffoldBackgroundColor: Color.fromARGB(255, 242, 228, 201), // le vrai fond
          textTheme: const TextTheme(),
          bottomAppBarTheme: const BottomAppBarTheme(),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/accueil" : (context) => const PageAccueil(),
        "/jeu" : (context) => const PageJeu(),
        "/recherche" : (context) => const PageResultatRecherche(),
        "/actualites" : (context) => const PageActualites(),
        "/actu" : (context) => const PageActualite(),
        "/apropos" : (context) => const PagePresentation(),
        "/connexion" : (context) => const PageConnexion(),
        "/adminaccueil" : (context) => const PageAdminAccueil(),
        "/admincreationjeu" : (context) => const PageAdminCreationJeu(),
        "/adminmodifjeu" : (context) => const PageAdminModifJeu(),
        "/admincreationactu" : (context) => const PageAdminCreationActualite(),
        "/adminmodifactu" : (context) => const PageAdminModifActualite(),
        "/erreur" : (context) => const PageErreur(),
      },
      home: const PageAccueil(),
    );
  }
}