import 'package:flutter/material.dart';
import 'pages/page_accueil.dart';
import 'pages/page_jeu.dart';
import 'pages/page_resultat_recherche.dart';
import 'pages/page_actualites.dart';
import 'pages/page_actualite.dart';
import 'pages/page_presentation.dart';
import 'pages/page_admin_accueil.dart';
import 'pages/page_admin_creation_jeu.dart';
import 'pages/page_admin_modif_jeu.dart';
import 'pages/page_admin_creation_actualite.dart';
import 'pages/page_admin_modif_actualite.dart';
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
          onSurface: Colors.purple, // texte
          /* surfaceContainer: Colors.white,
          surfaceContainerHigh: Colors.white,
          surfaceContainerHighest: Colors.white,
          surfaceContainerLow: Colors.white,
          surfaceContainerLowest: Colors.white,
          errorContainer: Colors.white,
          onErrorContainer: Colors.white,
          primaryContainer: Colors.white,
          onPrimaryContainer: Colors.white,
          tertiaryContainer: Colors.white,
          secondaryContainer: Colors.white,
          onTertiaryContainer: Colors.white,
          onSecondaryContainer: Colors.white, */
          ),
          iconTheme: const IconThemeData(
            color:  Color(0xFF000000),
          ),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Color(0xFFaaaaaa),
          ),
          appBarTheme: const AppBarTheme(
            color: Colors.teal, // là où il y a accueil et le menu
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          scaffoldBackgroundColor: Colors.lightBlue, // le vrai fond
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
      },
      home: const PageAccueil(),
    );
  }
}