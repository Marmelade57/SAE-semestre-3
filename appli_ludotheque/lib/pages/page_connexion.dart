import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageConnexion extends StatelessWidget {
  const PageConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: _contenuMenu(context),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              _affichageChamp("Identifiant", "Entrez votre identifiant"),
              const SizedBox(height: 32),
              _affichageChamp("Mot de passe", "Entrez votre mot de passe"),
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,
                      '/adminaccueil'); // à changer par un élément de vérification d'id et de mdp
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0), // Espacement interne
                ),
                child: const Text(
                  "Continuer",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              _logoUrl("assets/images/logo.png",
                  "https://www.latableeonirique.com/"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _affichageChamp(String champ, String texteDefaut) {
    return Column(children: [
      Row(
        children: [
          Text(
            champ,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey[400]!, // Couleur de la bordure
                width: 0.0, // Épaisseur de la bordure
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: texteDefaut,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    ]);
  }

  Widget _logoUrl(String cheminLogo, String url) {
    return IconButton(
      onPressed: () {
        launchUrl(Uri.parse(url));
      },
      icon: Image.asset(cheminLogo),
    );
  }

  // Menu du Drawer
  Widget _contenuMenu(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/logo.png"))),
          child: Text(''),
        ),
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Accueil'),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          leading: const Icon(Icons.newspaper_outlined),
          title: const Text('Actualités'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/actualites');
          },
        ),
        ListTile(
          leading: const Icon(Icons.question_mark_outlined),
          title: const Text('À propos'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/apropos');
          },
        ),
        ListTile(
          leading: const Icon(Icons.login),
          title: const Text('Connexion'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/connexion');
          },
        ),
      ],
    );
  }
}
