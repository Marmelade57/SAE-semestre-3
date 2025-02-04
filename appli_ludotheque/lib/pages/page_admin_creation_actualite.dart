import 'package:flutter/material.dart';

class PageAdminCreationActualite extends StatefulWidget {
  const PageAdminCreationActualite({super.key});

  @override
  _PageAdminCreationActualiteState createState() =>
      _PageAdminCreationActualiteState();
}

class _PageAdminCreationActualiteState
    extends State<PageAdminCreationActualite> {
  var _jeu1 = "Aucun";
  var _jeu2 = "Aucun";
  var _jeu3 = "Aucun";
  var _jeu4 = "Aucun";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajout - Actualité'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Section titre et description
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Titre", style: TextStyle(fontSize: 18)),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Saisissez le titre",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Description',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Align(
                        child: TextField(
                          maxLines: null,
                          minLines: 1,
                          decoration: InputDecoration(
                            hintText: "",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print("Choix d'une image");
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                ),
                child: const Text(
                  "Choisir image",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 48),

              // Section Jeux concernés - Grille 2x2
              const Text(
                'Jeux concernés',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Divider(),
              const SizedBox(height: 24),

              // Grid pour afficher les jeux en 2 lignes et 2 colonnes
              GridView.builder(
                shrinkWrap:
                    true, // Utilisation de shrinkWrap pour éviter un trop grand espace
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 3 / 2,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> jeux = [_jeu1, _jeu2, _jeu3, _jeu4];
                  String jeu = jeux[index];

                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Jeu n°${index + 1}',
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 8),
                          // Limiter la hauteur de la carte
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: DropdownButton<String>(
                                value: jeu,
                                items: [
                                  DropdownMenuItem<String>(
                                    value: jeu,
                                    child: Text(jeu),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    if (index == 0) {
                                      _jeu1 = value ?? _jeu1;
                                    } else if (index == 1) {
                                      _jeu2 = value ?? _jeu2;
                                    } else if (index == 2) {
                                      _jeu3 = value ?? _jeu3;
                                    } else {
                                      _jeu4 = value ?? _jeu4;
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 48),

              ElevatedButton(
                onPressed: () {
                  print("Ajout d'une actualité");
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 40.0),
                ),
                child: const Text(
                  "Ajouter",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
