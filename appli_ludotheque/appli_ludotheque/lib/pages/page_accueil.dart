import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  //color: Color.fromARGB(255, 207, 205, 205),
                  image: DecorationImage(image: AssetImage("../../images/logo.png"))
                ),
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
                title: const Text('Actualité'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/actualite');
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
          ),
        ),
      body: SingleChildScrollView(
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
                children: List.generate(4, (index) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/jeu'),
                    child: _buildGameCard(
                      'Jeu n°${index + 1}'
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

  Widget _buildGameCard(String title) {
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
                  title,
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