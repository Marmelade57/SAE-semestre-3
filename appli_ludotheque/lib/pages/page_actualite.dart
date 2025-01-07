import 'package:flutter/material.dart';

class PageActualite extends StatelessWidget {
  const PageActualite({super.key}); //String title, 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""), // Ajouter dynamiquement le titre
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
                physics: const NeverScrollableScrollPhysics(), // c'est quoi ? Demander à Gabin
                mainAxisSpacing: 32,
                children: List.generate(4, (index) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/act'),
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