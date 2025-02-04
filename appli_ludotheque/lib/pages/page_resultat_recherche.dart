import 'package:flutter/material.dart';

class PageResultatRecherche extends StatelessWidget {
  const PageResultatRecherche({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recherche'),
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

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _barreDeRecherche(),

            const SizedBox(height: 16),
            
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: List.generate(6, (index) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/jeu'),
                    child: _constructeurCarteJeu('Jeu n°${index + 1}'),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

    Widget _contenuMenu(BuildContext context){
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("../../images/logo.png"))
          ),
          child: Text(
            '',
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Accueil'),
          onTap: () => Navigator.pop(context, '/accueil'),
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

  Widget _barreDeRecherche() { // ??? est-ce que c'est ça
    return TextField(
      decoration: InputDecoration(
        hintText: 'Rechercher un jeu...',
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }

  Widget _constructeurCarteJeu(String titre) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Icon(Icons.image, size: 50),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 185, 185, 184),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titre,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}