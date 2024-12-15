import 'package:flutter/material.dart';

class PageResultatRecherche extends StatelessWidget {
  const PageResultatRecherche({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recherche',
            style: TextStyle(color: Color.fromARGB(221, 255, 255, 255))),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black87),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 151, 151, 151),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 85, 85, 85),
                ),
                child: Text(
                  'La Tablée Onirique',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Accueil'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/accueil');
                },
              ),
              ListTile(
                title: const Text('Recherche'),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
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
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: List.generate(6, (index) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/jeu'),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
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
                            color:  Color.fromARGB(255, 151, 151, 151),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jeu n°${index + 1}',
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}