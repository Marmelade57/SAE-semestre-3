import 'package:flutter/material.dart';

class PageAdminCreationJeu extends StatefulWidget {
  // **Modification : Passage à StatefulWidget**
  const PageAdminCreationJeu({super.key});

  @override
  _PageAdminCreationJeuState createState() => _PageAdminCreationJeuState();
}

class _PageAdminCreationJeuState extends State<PageAdminCreationJeu> {
  var _tagDifficulte = "Non défini";
  var _tagNbJoueursMin = "Non défini";
  var _tagNbJoueursMax = "Non défini";
  var _tagType = "Non défini";
  var _tagAgeMin = "Non défini";
  var _tagAgeMax = "Non défini";
  var _tagEtat = "Non défini";
  var _tagDureeMin = "Non défini";
  var _tagDureeMax = "Non défini";
  var _tagUnivers1 = "Non défini";
  var _tagUnivers2 = "Aucun";
  var _tagUnivers3 = "Aucun";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajout - Jeu'),
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
              const Text(
                'Liste des Tags',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDropdownColumn("Difficulté", _tagDifficulte,
                          (value) {
                        setState(() {
                          _tagDifficulte = value ?? _tagDifficulte;
                        });
                      }),
                      _buildDropdownColumn("Âge minimal", _tagAgeMin, (value) {
                        setState(() {
                          _tagAgeMin = value ?? _tagAgeMin;
                        });
                      }),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDropdownColumn("Type", _tagType, (value) {
                        setState(() {
                          _tagType = value ?? _tagType;
                        });
                      }),
                      _buildDropdownColumn("Nb Joueurs Min", _tagNbJoueursMin,
                          (value) {
                        setState(() {
                          _tagNbJoueursMin = value ?? _tagNbJoueursMin;
                        });
                      }),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDropdownColumn("Nb Joueurs Max", _tagNbJoueursMax,
                          (value) {
                        setState(() {
                          _tagNbJoueursMax = value ?? _tagNbJoueursMax;
                        });
                      }),
                      _buildDropdownColumn("Âge maximal", _tagAgeMax, (value) {
                        setState(() {
                          _tagAgeMax = value ?? _tagAgeMax;
                        });
                      }),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDropdownColumn("Durée minimale", _tagDureeMin,
                          (value) {
                        setState(() {
                          _tagDureeMin = value ?? _tagDureeMin;
                        });
                      }),
                      _buildDropdownColumn("Durée maximale", _tagDureeMax,
                          (value) {
                        setState(() {
                          _tagDureeMax = value ?? _tagDureeMax;
                        });
                      }),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDropdownColumn("État", _tagEtat, (value) {
                        setState(() {
                          _tagEtat = value ?? _tagEtat;
                        });
                      }),
                      _buildDropdownColumn("Univers 1", _tagUnivers1, (value) {
                        setState(() {
                          _tagUnivers1 = value ?? _tagUnivers1;
                        });
                      }),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDropdownColumn("Univers 2", _tagUnivers2, (value) {
                        setState(() {
                          _tagUnivers2 = value ?? _tagUnivers2;
                        });
                      }),
                      _buildDropdownColumn("Univers 3", _tagUnivers3, (value) {
                        setState(() {
                          _tagUnivers3 = value ?? _tagUnivers3;
                        });
                      }),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Divider(),
              const SizedBox(height: 32),
              _buildTextFieldSection("Lien YouTube", "Entrez le lien"),
              const SizedBox(height: 48),
              _buildTextFieldSection("Description", ""),
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {
                  print("Ajout d'un jeu");
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

  Widget _buildDropdownColumn(
      String label, String value, Function(String?) onChanged) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 150,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButton<String>(
            value: value,
            items: [
              DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ),
            ],
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldSection(String title, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey[400]!,
              width: 0.0,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
