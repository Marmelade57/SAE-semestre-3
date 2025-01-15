// V3 -> Barre de recherche mais filtrage avec types de tags non fonctionnel

import 'package:flutter/material.dart';

class Jeu {
  final int idJeu;
  final String titreJeu;
  final String imgJeu;
  final List<int> tags;

  Jeu({required this.idJeu, required this.titreJeu, required this.imgJeu, required this.tags});

  // Méthode qui renvoie la liste des tags associés à un jeu
  Future<List<int>> getTags() async {
    return tags; // Retourne simplement la liste des IDs de tags du jeu
  }

  static Future<List<Jeu>> fetchAll() async {
    return [
      Jeu(idJeu: 1, titreJeu: "Loups-Garous", imgJeu:"lg", tags: [1, 6, 7, 10, 13, 16, 20, 22, 25, 28]),
      Jeu(idJeu: 2, titreJeu: "Donjons et Dragons", imgJeu:"dnd", tags: [3, 6, 8, 11, 14, 17, 20, 22, 27, 30]),
      Jeu(idJeu: 3, titreJeu: "Uno", imgJeu:"uno",tags: [1, 5, 8, 12, 13, 18, 20, 22, 25, 28]),
      Jeu(idJeu: 4, titreJeu: "Echecs", imgJeu:"echecs",tags: [3, 4, 7, 10, 14, 18, 20, 22, 26, 29]),
      Jeu(idJeu: 5, titreJeu: "Cluedo", imgJeu:"cluedo",tags: [2, 5, 9, 10, 14, 18, 20, 22, 26, 29]),
      Jeu(idJeu: 6, titreJeu: "Monopoly", imgJeu:"monopoly",tags: [2, 6, 9, 12, 14, 18, 20, 22, 27, 30]),
      Jeu(idJeu: 7, titreJeu: "Trivial Pursuit", imgJeu:"tp",tags: [2, 5, 8, 10, 13, 18, 20, 22, 26, 29]),
      Jeu(idJeu: 8, titreJeu: "Bataille Navale", imgJeu:"bn",tags: [1, 4, 7, 10, 13, 18, 20, 22, 25, 28]),
      Jeu(idJeu: 9, titreJeu: "Action ou Vérité", imgJeu:"aov",tags: [1, 5, 9, 12, 13, 16, 21, 22, 25, 28]),
      Jeu(idJeu: 10, titreJeu: "Saboteur 2", imgJeu:"saboteur",tags: [3, 4, 8, 11, 15, 16, 20, 23, 26, 29]),
      Jeu(idJeu: 11, titreJeu: "Mastermind", imgJeu:"mm",tags: [2, 6, 9, 12, 14, 18, 20, 22, 27, 30]),
      Jeu(idJeu: 12, titreJeu: "Chaises musicales", imgJeu:"cm",tags: [1, 5, 8, 10, 13, 19, 22, 25, 29, 30]),
      Jeu(idJeu: 13, titreJeu: "Blind Test", imgJeu:"bt",tags: [1, 6, 7, 10, 14, 19, 21, 22, 25, 29]),
      Jeu(idJeu: 14, titreJeu: "Téléphone sans fil", imgJeu:"ta",tags: [1, 4, 7, 12, 13, 19, 21, 22, 25, 28]),
      Jeu(idJeu: 15, titreJeu: "7 Wonders", imgJeu:"sevenw",tags: [2, 5, 9, 12, 14, 17, 20, 22, 26, 29]),
      Jeu(idJeu: 16, titreJeu: "Tainted Grail : La Chute d'Avalon",imgJeu: "tg", tags: [3, 4, 7, 11, 15, 16, 20, 22, 27, 30]),
      Jeu(idJeu: 17, titreJeu: "Sub Terra", imgJeu:"masterclass",tags: [2, 5, 9, 12, 13, 16, 20, 22, 25, 28]),
      Jeu(idJeu: 18, titreJeu: "Devine Tête", imgJeu:"dt",tags: [1, 4, 7, 10, 14, 17, 21, 22, 25, 30]),
      Jeu(idJeu: 19, titreJeu: "Undercover", imgJeu:"undercover",tags: [3, 5, 8, 12, 13, 16, 21, 22, 26, 29]),
      Jeu(idJeu: 20, titreJeu: "La Bonne Paye", imgJeu:"bp",tags: [2, 4, 9, 10, 13, 17, 20, 22, 27, 30]),
    ];
  }
}

class TypeTag{
  final int idTypeTag;
  final String nom;
  final String nomComplet;

  TypeTag({required this.idTypeTag, required this.nom,required this.nomComplet});

  static Future<List<TypeTag>> fetchAll() async{
    return [
      TypeTag(idTypeTag: 1,nom:"Difficulté",nomComplet: "Difficulté"),
      TypeTag(idTypeTag: 2,nom:"NbJoueursMax",nomComplet: "Nombre de joueurs maximum"),
      TypeTag(idTypeTag: 3,nom:"NbJoueursMin",nomComplet: "Nombre de joueurs minimum"),
      TypeTag(idTypeTag: 4,nom:"AgeMax",nomComplet: "Âge maximal autorisé"),
      TypeTag(idTypeTag: 5,nom:"AgeMin",nomComplet: "Âge minimal autorisé"),
      TypeTag(idTypeTag: 6,nom:"Univers",nomComplet: "Univers"),
      TypeTag(idTypeTag: 7,nom:"Type",nomComplet: "Type"),
      TypeTag(idTypeTag: 8,nom:"Etat",nomComplet: "Etat"),
      TypeTag(idTypeTag: 9,nom:"DureeMax",nomComplet: "Durée maximale en moyenne"),
      TypeTag(idTypeTag: 10,nom:"DureeMin",nomComplet: "Durée minimale en moyenne"),
    ];
  }
}

class Tag {
  final int idTag;
  final String nom;
  final int type;

  Tag({required this.idTag, required this.nom, required this.type});

  Future<int> getTypeTag() async {
    return type; // Retourne simplement le type du tag
  }

  static Future<List<Tag>> fetchAll() async {
    return [
      Tag(idTag: 1, nom: "Facile", type: 1),
      Tag(idTag: 2, nom: "Moyen", type: 1),
      Tag(idTag: 3, nom: "Difficile", type: 1),
      Tag(idTag: 4, nom: "2 Joueurs", type: 2),
      Tag(idTag: 5, nom: "4 Joueurs", type: 2),
      Tag(idTag: 6, nom: "16 Joueurs", type: 2),
      Tag(idTag: 7, nom: "1 Joueur", type: 3),
      Tag(idTag: 8, nom: "2 Joueurs", type: 3),
      Tag(idTag: 9, nom: "4 Joueurs", type: 3),
      Tag(idTag: 10, nom: "99 ans", type: 4),
      Tag(idTag: 11, nom: "120 ans", type: 4),
      Tag(idTag: 12, nom: "Pas de limite", type: 4),
      Tag(idTag: 13, nom: "3 ans", type: 5),
      Tag(idTag: 14, nom: "7 ans", type: 5),
      Tag(idTag: 15, nom: "18 ans", type: 5),
      Tag(idTag: 16, nom: "Médiéval", type: 6),
      Tag(idTag: 17, nom: "Fantastique", type: 6),
      Tag(idTag: 18, nom: "Classique", type: 6),
      Tag(idTag: 19, nom: "Jeu musical", type: 7),
      Tag(idTag: 20, nom: "Jeu de société", type: 7),
      Tag(idTag: 21, nom: "Jeu d'ambiance", type: 7),
      Tag(idTag: 22, nom: "Disponible", type: 8),
      Tag(idTag: 23, nom: "Archivé", type: 8),
      Tag(idTag: 24, nom: "En réparation", type: 8),
      Tag(idTag: 25, nom: "30 minutes", type: 9),
      Tag(idTag: 26, nom: "1 heure", type: 9),
      Tag(idTag: 27, nom: "3 heures", type: 9),
      Tag(idTag: 28, nom: "5 minutes", type: 10),
      Tag(idTag: 29, nom: "30 minutes", type: 10),
      Tag(idTag: 30, nom: "1 heure", type: 10),
    ];
  }
}

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  _PageAccueilState createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  List<Jeu> jeux = [];
  List<Tag> tags = [];
  List<Tag> selectedTags = [];
  List<Tag> previousSelectedTags = [];
  List<Tag> filteredTags = [];
  String searchQuery = ""; // Variable pour stocker la recherche

  @override
  void initState() {
    super.initState();
    _loadJeuxAndTags();
  }

  Future<void> _loadJeuxAndTags() async {
    List<Jeu> allJeux = await Jeu.fetchAll();
    List<Tag> allTags = await Tag.fetchAll();

    setState(() {
      jeux = allJeux;
      tags = allTags;
      filteredTags = allTags; // Initialement, tous les tags sont affichés
    });
  }

Future<List<Jeu>> _filterJeuxByTags(String query) async {
  List<Jeu> filteredJeux = [];

  // Filtrer les jeux en fonction des tags sélectionnés
  for (var jeu in jeux) {
    bool hasSelectedTag = selectedTags.isEmpty ||
        selectedTags.any((tag) => jeu.tags.contains(tag.idTag));

    // Si le jeu correspond à au moins un tag sélectionné et à la recherche par titre
    if (hasSelectedTag && jeu.titreJeu.toLowerCase().contains(query.toLowerCase())) {
      filteredJeux.add(jeu);
    }
  }

  return filteredJeux;
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      drawer: Drawer(
        child: _contenuMenu(context),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (query) {
                        setState(() {
                          searchQuery = query;
                        });
                      },
                      decoration: const InputDecoration(
                        labelText: 'Effectuer la recherche...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.filter_list),
                    onPressed: () => _showTagFilterDialog(context),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _constructeurListeJeux(),
            ],
          ),
        ),
      ),
    );
  }

 // Affiche la fenêtre de filtre des types de tags
void _showTagFilterDialog(BuildContext context) async {
  List<TypeTag> typeTags = await TypeTag.fetchAll(); // Récupère la liste des types de tags

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Filtrer par type de tags"),
        content: SizedBox(
          width: double.maxFinite,
          height: 300,
          child: ListView.builder(
            itemCount: typeTags.length, // Nombre réel de types de tags
            itemBuilder: (context, index) {
              final typeTag = typeTags[index]; // Utilise un type réel de la liste

              return ListTile(
                title: Text(typeTag.nomComplet), // Affiche le nom complet réel
                onTap: () {
                  Navigator.pop(context);
                  _showTagSelectionDialog(context, typeTag);
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Retour"),
          ),
        ],
      );
    },
  );
}


 // Affiche la fenêtre de sélection des tags pour un type spécifique
void _showTagSelectionDialog(BuildContext context, TypeTag typeTag) {
  List<Tag> allTags = tags.where((tag) => tag.type == typeTag.idTypeTag).toList();
  List<Tag> temporarySelectedTags = List.from(selectedTags);

  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text("Sélectionner des tags - ${typeTag.nomComplet}"),
            content: SizedBox(
              width: double.maxFinite,
              height: 300,
              child: ListView.builder(
                itemCount: allTags.length,
                itemBuilder: (context, index) {
                  final tag = allTags[index];
                  return CheckboxListTile(
                    title: Text(tag.nom),
                    value: temporarySelectedTags.contains(tag),
                    onChanged: (isSelected) {
                      setState(() {
                        if (isSelected!) {
                          temporarySelectedTags.add(tag);
                        } else {
                          temporarySelectedTags.remove(tag);
                        }
                      });
                    },
                  );
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Fermer la fenêtre actuelle
                  _showTagFilterDialog(context); // Revenir à la fenêtre des types de tags
                },
                child: const Text("Annuler"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    selectedTags = temporarySelectedTags;
                  });
                  Navigator.pop(context); // Fermer la fenêtre actuelle
                  _showTagFilterDialog(context);
                },
                child: const Text("Valider"),
              ),
            ],
          );
        },
      );
    },
  );
}



  Widget _constructeurListeJeux() {
    return FutureBuilder<List<Jeu>>(
      future: _filterJeuxByTags(searchQuery),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Erreur: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('Aucun jeu trouvé.'));
        } else if (snapshot.hasData) {

          List<Jeu> filteredJeux = snapshot.data!;
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: filteredJeux.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              Jeu jeu = filteredJeux[index];
              return GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/jeu', arguments: jeu.idJeu),
                child: _constructeurCarteJeu(jeu.idJeu,jeu.titreJeu,jeu.imgJeu),
              );
            },
          );
        } else {
          return const Center(child: Text("Aucun élément disponible."));
        }
      },
    );
  }

  Widget _constructeurCarteJeu(int id, String title,String img) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 180,
            height: 180,
            child : DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('../../images/jeux/$id.$img.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              child: Text(''),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 52, 166, 191),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }


Widget _contenuMenu(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("../../images/logo.png"))),
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
          title: const Text('Actualités'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/actualites');
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
    );
  }

}
