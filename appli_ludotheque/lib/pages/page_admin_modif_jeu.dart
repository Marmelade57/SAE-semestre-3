import 'package:flutter/material.dart';

class PageAdminModifJeu extends StatefulWidget {
  // **Modification : Passage à StatefulWidget**
  const PageAdminModifJeu({super.key});

  @override
  _PageAdminModifJeuState createState() => _PageAdminModifJeuState();
}

class _PageAdminModifJeuState extends State<PageAdminModifJeu> {
  var _displayTitre = "Loups-Garous";
  var _displayNomImage = "lg.png";
  var _displayLienYoutube = "https://www.youtube.com/watch?v=9dz1wDVJIio";
  var _displayDescription =
      "Dans les contrées sauvages de l’Est, le hameau paisible de Thiercelieux est désormais la cible des loups-garous. Face à cette menace, les villageois ont pris la décision de s’unir et de riposter. Notre association, s’inspirant directement du jeu « Les Loups-garous de Thiercelieux », organise des parties exceptionnelles animées par des maîtres du jeu expérimentés, et agrémentées d’une multitude d’effets spéciaux pour renforcer l’immersion. « Les Loups-garous de Thiercelieux » est notre événement vedette, se distinguant par son riche arsenal d’effets techniques et de décors.";
  var _tagDifficulte = "Moyen";
  var _tagNbJoueursMin = "4 Joueurs";
  var _tagNbJoueursMax = "16 Joueurs";
  var _tagType = "Jeu de rôle";
  var _tagAgeMin = "16 ans";
  var _tagAgeMax = "Sans limite";
  var _tagEtat = "Disponible";
  var _tagDureeMin = "15 Minutes";
  var _tagDureeMax = "3 Heures";
  var _tagUnivers1 = "Médiéval";
  var _tagUnivers2 = "Aucun";
  var _tagUnivers3 = "Aucun";

  TextEditingController titreController = TextEditingController();
  TextEditingController lienYoutubeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void initState() {
    super.initState();
    titreController.text = _displayTitre;
    lienYoutubeController.text = _displayLienYoutube;
    descriptionController.text = _displayDescription;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modification - Jeu'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: screenWidth,
                alignment: Alignment.topLeft,
                height: 160,
                padding: const EdgeInsets.all(16.0),
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
                      child: TextField(
                        controller: titreController,
                        decoration: const InputDecoration(
                          hintText: "Ajoutez un titre",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print("Modification de l'image");
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
                  "Changer l'image",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                _displayNomImage,
                style: const TextStyle(
                  fontSize: 16, // Taille de la police
                  color: Colors.black, // Couleur du texte
                ),
              ),
              const SizedBox(height: 48),
              const Text(
                'Liste des Tags',
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Difficulté",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors
                                  .black, // Changement de couleur du texte
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            width: 120,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButton<String>(
                              value:
                                  _tagDifficulte, // Afficher la valeur sélectionnée
                              isExpanded: true,
                              items: [
                                DropdownMenuItem<String>(
                                  value: _tagDifficulte, // La valeur affichée
                                  child: Text(
                                      _tagDifficulte), // Afficher uniquement la valeur sélectionnée
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _tagDifficulte = value ??
                                      _tagDifficulte; // Mise à jour de la valeur sélectionnée
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      // Deuxième colonne
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Âge minimal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors
                                  .black, // Changement de couleur du texte
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            width: 120,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButton<String>(
                              value:
                                  _tagAgeMin, // Afficher la valeur sélectionnée
                              isExpanded: true,
                              items: [
                                DropdownMenuItem<String>(
                                  value: _tagAgeMin, // La valeur affichée
                                  child: Text(
                                      _tagAgeMin), // Afficher uniquement la valeur sélectionnée
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _tagAgeMin = value ??
                                      _tagAgeMin; // Mise à jour de la valeur sélectionnée
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      // Troisième colonne
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Âge maximal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors
                                  .black, // Changement de couleur du texte
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            width: 120,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButton<String>(
                              value:
                                  _tagAgeMax, // Afficher la valeur sélectionnée
                              isExpanded: true,
                              items: [
                                DropdownMenuItem<String>(
                                  value: _tagAgeMax, // La valeur affichée
                                  child: Text(
                                      _tagAgeMax), // Afficher uniquement la valeur sélectionnée
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _tagAgeMax = value ??
                                      _tagAgeMax; // Mise à jour de la valeur sélectionnée
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 32),
                      // Première ligne de colonnes
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Espacement égal entre les colonnes
                        children: [
                          // Première colonne
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Type",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Couleur du texte
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value:
                                      _tagType, // Afficher la valeur sélectionnée
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: _tagType, // La valeur affichée
                                      child: Text(
                                          _tagType), // Afficher uniquement la valeur sélectionnée
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _tagType = value ??
                                          _tagType; // Mise à jour de la valeur sélectionnée
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),

                          // Deuxième colonne
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Joueurs Min",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Couleur du texte
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value:
                                      _tagNbJoueursMin, // Afficher la valeur sélectionnée
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value:
                                          _tagNbJoueursMin, // La valeur affichée
                                      child: Text(
                                          _tagNbJoueursMin), // Afficher uniquement la valeur sélectionnée
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _tagNbJoueursMin = value ??
                                          _tagNbJoueursMin; // Mise à jour de la valeur sélectionnée
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),

                          // Troisième colonne
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Joueurs Max",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Couleur du texte
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value:
                                      _tagNbJoueursMax, // Afficher la valeur sélectionnée
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value:
                                          _tagNbJoueursMax, // La valeur affichée

                                      child: Text(
                                          _tagNbJoueursMax), // Afficher uniquement la valeur sélectionnée
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _tagNbJoueursMax = value ??
                                          _tagNbJoueursMax; // Mise à jour de la valeur sélectionnée
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 32),

                      // Deuxième ligne de colonnes (répétée de manière identique)
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Espacement égal entre les colonnes
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Etat",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Couleur du texte
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value:
                                      _tagEtat, // Afficher la valeur sélectionnée
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: _tagEtat, // La valeur affichée
                                      child: Text(
                                          _tagEtat), // Afficher uniquement la valeur sélectionnée
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _tagEtat = value ??
                                          _tagEtat; // Mise à jour de la valeur sélectionnée
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Durée Min",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Couleur du texte
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value:
                                      _tagDureeMin, // Afficher la valeur sélectionnée
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: _tagDureeMin, // La valeur affichée
                                      child: Text(
                                          _tagDureeMin), // Afficher uniquement la valeur sélectionnée
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _tagDureeMin = value ??
                                          _tagDureeMin; // Mise à jour de la valeur sélectionnée
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Durée Max",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Couleur du texte
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value:
                                      _tagDureeMax, // Afficher la valeur sélectionnée
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: _tagDureeMax, // La valeur affichée
                                      child: Text(
                                          _tagDureeMax), // Afficher uniquement la valeur sélectionnée
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _tagDureeMax = value ??
                                          _tagDureeMax; // Mise à jour de la valeur sélectionnée
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      // Troisième ligne de colonnes (répétée de manière identique)
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Espacement égal entre les colonnes
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Univers 1",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Couleur du texte
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value:
                                      _tagUnivers1, // Afficher la valeur sélectionnée
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: _tagUnivers1, // La valeur affichée
                                      child: Text(
                                          _tagUnivers1), // Afficher uniquement la valeur sélectionnée
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _tagUnivers1 = value ??
                                          _tagUnivers1; // Mise à jour de la valeur sélectionnée
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Univers 2",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Couleur du texte
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value:
                                      _tagUnivers2, // Afficher la valeur sélectionnée
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: _tagUnivers2, // La valeur affichée
                                      child: Text(
                                          _tagUnivers2), // Afficher uniquement la valeur sélectionnée
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _tagUnivers2 = value ??
                                          _tagUnivers2; // Mise à jour de la valeur sélectionnée
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Univers 3",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Couleur du texte
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value:
                                      _tagUnivers3, // Afficher la valeur sélectionnée
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: _tagUnivers3, // La valeur affichée
                                      child: Text(
                                          _tagUnivers3), // Afficher uniquement la valeur sélectionnée
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _tagUnivers3 = value ??
                                          _tagUnivers3; // Mise à jour de la valeur sélectionnée
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Divider(),
              const SizedBox(height: 32),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lien YouTube',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold, // Police en gras
                    color: Colors.black, // Couleur du texte
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey[400]!, // Couleur de la bordure
                    width: 0.0, // Épaisseur de la bordure
                  ),
                ),
                child: TextField(
                  controller: lienYoutubeController,
                  decoration: const InputDecoration(
                    hintText: "Entrez le lien",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold, // Police en gras
                    color: Colors.black, // Couleur du texte
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey[400]!, // Couleur de la bordure
                    width: 0.0, // Épaisseur de la bordure
                  ),
                ),
                child: Align(
                  child: TextField(
                    controller: descriptionController,
                    maxLines:
                        null, // Permet au texte de s'étendre et de revenir à la ligne
                    minLines: 1, // Nombre minimal de lignes
                    decoration: const InputDecoration(
                      hintText: "",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Espace entre les deux boutons
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("L'actu a été supprimée.");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red[800],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 20.0), // Réduction du padding
                    ),
                    child: const Text(
                      "Supprimer",
                      style: TextStyle(
                        fontSize: 18, // Réduction de la taille de la police
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16), // Espace entre les boutons
                  ElevatedButton(
                    onPressed: () {
                      print("L'actu a été sauvegardée.");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green[700],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 20.0), // Réduction du padding
                    ),
                    child: const Text(
                      "Sauvegarder",
                      style: TextStyle(
                        fontSize: 18, // Réduction de la taille de la police
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
