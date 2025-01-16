import 'package:flutter/material.dart';
import '../modele/dao.class.dart';

DAO dao = DAO();

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  Future<List<String>> _getAllTitles(DAO dao) async {
    List<Map<String, dynamic>> data = await dao.getAll("JEU");
    List<String> titles =
        data.map((item) => item['titre_jeu'] as String).toList();

    return titles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accueil"),
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
      body: FutureBuilder<List<String>>(
        future: _getAllTitles(dao),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Afficher un indicateur de chargement pendant que les données sont récupérées
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Afficher un message d'erreur si la récupération échoue
            return Center(child: Text("Erreur : ${snapshot.error}"));
          } else if (snapshot.hasData) {
            // Utiliser les titres récupérés pour générer les cartes
            List<String> titles = snapshot.data!;

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      children: List.generate(titles.length, (index) {
                        return GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/jeu',
                              arguments: index + 1),
                          child:
                              _constructeurCarteJeu(index + 1, titles[index]),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          } else {
            // Gestion d'un cas improbable sans données
            return const Center(child: Text("Aucun élément disponible."));
          }
        },
      ),
    );
  }

  Widget _constructeurCarteJeu(int index, String titre) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset("assets/images/jeux/$index.png"),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _contenuMenu(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/logo.png"))),
          child: Text(
            '',
          ),
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
