import 'package:flutter/material.dart';
import 'pages/page_accueil.dart';
import 'pages/page_jeu.dart';
import 'pages/page_resultat_recherche.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludothèque',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 151, 151, 151),
        scaffoldBackgroundColor: const Color.fromARGB(255, 134, 134, 134),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 65, 65, 65),
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/accueil" : (context) => const PageAccueil(),
        "/jeu" : (context) => const PageJeu(),
        "/recherche" : (context) => const PageResultatRecherche(),
      },
      home: const PageAccueil(),
    );
  }
}