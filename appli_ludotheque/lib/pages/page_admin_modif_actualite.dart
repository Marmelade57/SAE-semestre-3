import 'package:flutter/material.dart';

class PageAdminModifActualite extends StatefulWidget {
  const PageAdminModifActualite({super.key});

  @override
  _PageAdminModifActualiteState createState() =>
      _PageAdminModifActualiteState();
}

class _PageAdminModifActualiteState extends State<PageAdminModifActualite> {
  var _displayTitre = "Les meilleurs jeux !";
  var _displayNomImage = "dnd.png";
  var _displayDescription = "Voici les deux meilleurs jeux de la ludothèque.";
  var _jeu1 = "Tainted Grail : La Chute D'Avalon";
  var _jeu2 = "Sub Terra";
  var _jeu3 = "Aucun";
  var _jeu4 = "Aucun";

  TextEditingController titreController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titreController.text = _displayTitre;
    descriptionController.text = _displayDescription;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modification - Actualité'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                alignment: Alignment.topLeft,
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
                      child: TextField(
                        controller: titreController,
                        decoration: const InputDecoration(
                          hintText: "Ajoutez un titre",
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
                          color: Colors.grey[400]!,
                          width: 0.0,
                        ),
                      ),
                      child: TextField(
                        controller: descriptionController,
                        maxLines: null,
                        minLines: 1,
                        decoration: const InputDecoration(
                          hintText: "",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print("Modification de l'image");
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
                  "Changer l'image",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                _displayNomImage,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 48),
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
              Column(
                children: [
                  for (var i = 1; i <= 4; i++) ...[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jeu n°$i",
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value: i == 1
                                      ? _jeu1
                                      : i == 2
                                          ? _jeu2
                                          : i == 3
                                              ? _jeu3
                                              : _jeu4,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: i == 1
                                          ? _jeu1
                                          : i == 2
                                              ? _jeu2
                                              : i == 3
                                                  ? _jeu3
                                                  : _jeu4,
                                      child: Text(i == 1
                                          ? _jeu1
                                          : i == 2
                                              ? _jeu2
                                              : i == 3
                                                  ? _jeu3
                                                  : _jeu4),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      if (i == 1) {
                                        _jeu1 = value ?? _jeu1;
                                      } else if (i == 2) {
                                        _jeu2 = value ?? _jeu2;
                                      } else if (i == 3) {
                                        _jeu3 = value ?? _jeu3;
                                      } else {
                                        _jeu4 = value ?? _jeu4;
                                      }
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]
                ],
              ),
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Ajout d'un espace entre les boutons
                  ElevatedButton(
                    onPressed: () {
                      print("Le jeu a été supprimé.");
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
                      print("Le jeu a été sauvegardé.");
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
