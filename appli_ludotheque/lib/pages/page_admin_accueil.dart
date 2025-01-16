import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageAdminAccueil extends StatefulWidget {
  const PageAdminAccueil({super.key});
  @override
  _PageAdminAccueil createState() => _PageAdminAccueil();
}

class _PageAdminAccueil extends State<PageAdminAccueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil - Admin'),
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
              const SizedBox(height: 8),
              _logoUrl("assets/images/logo.png",
                  "https://www.latableeonirique.com/"),
              const SizedBox(height: 48),
              _constructeurZoneBoutons(
                "Ajouter à l'application",
                _constructeurBouton(
                    context, "/admincreationjeu", "Jeu", Colors.grey[900]!),
                _constructeurBouton(context, "/admincreationactu", "Actualité",
                    Colors.grey[900]!),
              ),
              const SizedBox(height: 64),
              _constructeurZoneBoutons(
                "Modifier les données",
                _constructeurBouton(
                    context, "/adminmodifjeu", "Jeu", Colors.grey[900]!),
                _constructeurBouton(
                    context, "/adminmodifactu", "Actualité", Colors.grey[900]!),
              ),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centrer le bouton
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
        launchUrl(Uri.parse(url));
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
          vertical: 16.0,
          horizontal: 40.0, // Réduit pour s'adapter à l'écran
        ),
      ),
      child: Text(
        texteBouton,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _constructeurZoneBoutons(
      String titrePartie, Widget bouton1, Widget bouton2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titrePartie,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // Espace entre les boutons
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: bouton1,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: bouton2,
              ),
            ),
          ],
        ),
      ],
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
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/accueil'); // Page d'accueil
          },
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
      ],
    );
  }
}
