import 'package:appli_ludotheque/pages/page_erreur.dart';
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
    const orange = Color.fromARGB(255, 242, 166, 99);
    const creme = Color.fromARGB(255, 242, 228, 201);
    const noir1 = Color.fromARGB(255, 13, 26, 38);
    const rouge = Color.fromARGB(255, 191, 65, 36);
    const bleu = Color.fromARGB(255, 52, 166, 191);
    return MaterialApp(
      title: 'Ludothèque', // possibilité de faire un thème nuit
      theme: ThemeData(
          // la police d'écriture est à changer dans pubspec.yaml
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black,
            primary: orange,
            error: rouge,
            onError: rouge,
            /* onPrimary: Colors.pink,
          secondary: Colors.blue,
          onSecondary: Colors.blueGrey,
          tertiary: Colors.lime,
          onTertiary: Colors.orange, */
            surface: Colors
                .white, // fond quand le scaffold n'est pas défini. Exemple : filtre
            onSurface: Colors.black, // texte
          ),
          iconTheme: const IconThemeData(
            color: noir1,
          ),
          drawerTheme: const DrawerThemeData(
            backgroundColor: orange,
            scrimColor: Color.fromARGB(128, 255, 255, 255),
          ),
          listTileTheme: ListTileThemeData(
            iconColor: noir1,
            textColor: noir1,
          ),
          appBarTheme: const AppBarTheme(
            color: orange, // là où il y a accueil et le menu
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          scaffoldBackgroundColor: creme, // le vrai fond
          fontFamily: "Plus Jakarta Sans"),
      debugShowCheckedModeBanner: false,
      routes: {
        "/accueil": (context) => const PageAccueil(),
        "/jeu": (context) => const PageJeu(),
        "/recherche": (context) => const PageResultatRecherche(),
        "/actualites": (context) => const PageActualites(),
        "/actu": (context) => const PageActualite(),
        "/apropos": (context) => const PagePresentation(),
        "/connexion": (context) => const PageConnexion(),
        "/adminaccueil": (context) => const PageAdminAccueil(),
        "/admincreationjeu": (context) => const PageAdminCreationJeu(),
        "/adminmodifjeu": (context) => const PageAdminModifJeu(),
        "/admincreationactu": (context) => const PageAdminCreationActualite(),
        "/adminmodifactu": (context) => const PageAdminModifActualite(),
        "/erreur": (context) => const PageErreur(),
      },
      home: const PageAccueil(),
    );
  }
}
