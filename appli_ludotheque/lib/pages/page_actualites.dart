import 'package:flutter/material.dart';

class PageActualites extends StatelessWidget {
  const PageActualites({super.key});
  
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(
                crossAxisCount: 1,
                shrinkWrap: true,
                childAspectRatio: double.parse("1.25"),
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 32,
                children: List.generate(4, (index) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/actu'),
                    child: _constructeurCarteActu(
                      'Nom actualité n°${index + 1}',
                      "Ceci est la description courte de l'actualité numéro ${index + 1}"
                    ),
                  );
                }),
              ),
            ],
          ),
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
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/accueil');
          }
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

  Widget _constructeurCarteActu(String titre, String contenu) {
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
              color: Color.fromARGB(255, 52, 166, 191),
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
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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