import 'package:flutter/material.dart';
import '../modele/dao.class.dart';

DAO dao = DAO();

class PageActualites extends StatelessWidget {
  const PageActualites({super.key});

  Future<List<String>> _getAllTitles(DAO dao) async {
    try {
      List<Map<String, dynamic>> data = await dao.getAll("ACTUALITE");
      return data.map((item) => item['nom_actu'] as String).toList();
    } catch (e) {
      return Future.error('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actualités'),
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
          padding: const EdgeInsets.all(32.0),
          child: FutureBuilder<List<String>>(
            future: _getAllTitles(dao),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Erreur: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('Aucune actualité disponible'));
              }
              final titles = snapshot.data!;
              return GridView.count(
                crossAxisCount: 1,
                shrinkWrap: true,
                childAspectRatio: 1.25,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 32,
                children: List.generate(titles.length, (index) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/actu'),
                    child: _constructeurCarteActu(
                        titles[index],
                        "Ceci est la description courte pour '${titles[index]}'",
                        index + 1),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _contenuMenu(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("../../images/logo.png")),
          ),
          child: Text(
            '',
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Accueil'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/accueil');
          },
        ),
        ListTile(
          leading: const Icon(Icons.newspaper_outlined),
          title: const Text('Actualités'),
          onTap: () => Navigator.pop(context),
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

  Widget _constructeurCarteActu(String titre, String contenu, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset("../images/jeux/$index.png"),
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
                  "    $titre",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  contenu,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                  overflow: TextOverflow.fade,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
