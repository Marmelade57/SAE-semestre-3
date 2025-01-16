import 'package:flutter/material.dart';
import '../modele/dao.class.dart';

DAO dao = DAO();

class PageActualites extends StatelessWidget {
  const PageActualites({super.key});

  Future<List<Map<String, dynamic>>> _getAllActualites(DAO dao) async {
    try {
      return await dao.getAll("ACTUALITE");
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
          child: FutureBuilder<List<Map<String, dynamic>>>(
            future: _getAllActualites(dao),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Erreur: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('Aucune actualité disponible'));
              }
              final actualites = snapshot.data!;
              return GridView.count(
                crossAxisCount: 1,
                shrinkWrap: true,
                childAspectRatio: 1.25,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 32,
                children: actualites.map((actu) {
                  final id = actu['id_actu'] as int;
                  final title = actu['nom_actu'] as String;
                  final description = actu['description'] as String? ??
                      "Description non disponible";

                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/actu',
                      arguments: id, // Passez l'identifiant à la page de détail
                    ),
                    child: _constructeurCarteActu(title, description, id),
                  );
                }).toList(),
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
            image: DecorationImage(image: AssetImage("assets/images/logo.png")),
          ),
          child: Text(''),
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

  Widget _constructeurCarteActu(String titre, String contenu, int id) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              "assets/images/actu/$id.png",
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.image_not_supported,
                size: 100,
              ),
            ),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
