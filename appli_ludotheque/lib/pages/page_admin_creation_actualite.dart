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

  get screenWidth => null;

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
              Container(
                width: screenWidth,
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Première ligne : Texte aligné à gauche
                    const Text("Titre", style: TextStyle(fontSize: 18)),
                    const SizedBox(height: 16),

                    // Deuxième ligne : Zone de texte
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
                        border: Border.all(
                          color: Colors.grey[400]!, // Couleur de la bordure
                          width: 0.0, // Épaisseur de la bordure
                        ),
                      ),
                      child: const Align(
                        child: TextField(
                          maxLines:
                              null, // Permet au texte de s'étendre et de revenir à la ligne
                          minLines: 1, // Nombre minimal de lignes
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
                  backgroundColor: Colors.grey[900], // Couleur de fond noire
                  foregroundColor: Colors.white, // Couleur du texte blanche
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5), // Pas de coins arrondis
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0), // Espacement interne
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
              const Text(
                'Jeux concernés',
                style: TextStyle(
                  fontSize: 28, // Taille de la police
                  fontWeight: FontWeight.bold, // Police en gras
                  color: Colors.black, // Couleur du texte
                ),
              ),
              const Divider(),
              const SizedBox(height: 24),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Espacement égal entre les colonnes
                    children: [
                      // Première colonne
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Jeu n°1",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors
                                  .black, // Changement de couleur du texte
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 400,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButton<String>(
                              value: _jeu1, // Afficher la valeur sélectionnée
                              items: [
                                DropdownMenuItem<String>(
                                  value: _jeu1, // La valeur affichée
                                  child: Text(
                                      _jeu1), // Afficher uniquement la valeur sélectionnée
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _jeu1 = value ??
                                      _jeu1; // Mise à jour de la valeur sélectionnée
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Espacement égal entre les colonnes
                    children: [
                      // Première colonne
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Jeu n°2",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors
                                  .black, // Changement de couleur du texte
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 400,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButton<String>(
                              value: _jeu2, // Afficher la valeur sélectionnée
                              items: [
                                DropdownMenuItem<String>(
                                  value: _jeu2, // La valeur affichée
                                  child: Text(
                                      _jeu2), // Afficher uniquement la valeur sélectionnée
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _jeu2 = value ??
                                      _jeu2; // Mise à jour de la valeur sélectionnée
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Espacement égal entre les colonnes
                    children: [
                      // Première colonne
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Jeu n°3",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors
                                  .black, // Changement de couleur du texte
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 400,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButton<String>(
                              value: _jeu3, // Afficher la valeur sélectionnée
                              items: [
                                DropdownMenuItem<String>(
                                  value: _jeu3, // La valeur affichée
                                  child: Text(
                                      _jeu3), // Afficher uniquement la valeur sélectionnée
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _jeu3 = value ??
                                      _jeu3; // Mise à jour de la valeur sélectionnée
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Espacement égal entre les colonnes
                    children: [
                      // Première colonne
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Jeu n°4",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors
                                  .black, // Changement de couleur du texte
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 400,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButton<String>(
                              value: _jeu4, // Afficher la valeur sélectionnée
                              items: [
                                DropdownMenuItem<String>(
                                  value: _jeu4, // La valeur affichée
                                  child: Text(
                                      _jeu4), // Afficher uniquement la valeur sélectionnée
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _jeu4 = value ??
                                      _jeu4; // Mise à jour de la valeur sélectionnée
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {
                  print("Ajout d'une actualité");
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green[700], // Couleur de fond vert
                  foregroundColor: Colors.white, // Couleur du texte blanche
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5), // Pas de coins arrondis
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 40.0), // Espacement interne
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

  Widget _buildCarteTag(String nomTag) {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            nomTag,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
