import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageAdminAccueil extends StatefulWidget {
  const PageAdminAccueil({super.key});
  @override
  _PageAdminAccueil createState() => _PageAdminAccueil();
}

class _PageAdminAccueil extends State<PageAdminAccueil> {
  get screenWidth => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil - Admin'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 8),
              const Text(
                'Bienvenue, Administrateur !',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              const Divider(),
              const SizedBox(height: 8),
              _logoUrl(
                  "../images/logo.png", "https://www.latableeonirique.com/"),
              const SizedBox(height: 48),
              _constructeurZoneBoutons(
                  "Ajouter à l'application",
                  _constructeurBouton(
                      context, "/admincreationjeu", "Jeu", Colors.grey[900]!),
                  _constructeurBouton(context, "/admincreationactu",
                      "Actualité", Colors.grey[900]!)),
              const SizedBox(height: 64),
              _constructeurZoneBoutons(
                  "Modifier les données",
                  _constructeurBouton(
                      context, "/adminmodifjeu", "Jeu", Colors.grey[900]!),
                  _constructeurBouton(context, "/adminmodifactu", "Actualité",
                      Colors.grey[900]!)),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Espace entre les deux boutons
                children: [
                  _constructeurBouton(
                      context, "/accueil", "Déconnexion", Colors.red[800]!),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logoUrl(String cheminLogo, String url) {
    return IconButton(
      onPressed: () {
        // ignore: deprecated_member_use
        launch(url);
      },
      icon: Image.asset(cheminLogo),
    );
  }

  Widget _constructeurBouton(
      BuildContext context, String url, String texteBouton, Color couleurFond) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, url);
      },
      style: TextButton.styleFrom(
        backgroundColor: couleurFond,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: 16.0, horizontal: 70.0), // Espacement interne
      ),
      child: Text(
        texteBouton,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }

  Widget _constructeurZoneBoutons(
      String titrePartie, Widget bouton1, Widget bouton2) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            titrePartie,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
      const SizedBox(height: 8),
      Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Espace entre les deux boutons
        children: [
          bouton1,
          bouton2,
        ],
      ),
    ]);
  }
}
