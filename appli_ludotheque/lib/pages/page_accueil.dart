import 'package:flutter/material.dart';
import '../modele/dao.class.dart';

DAO dao = DAO();

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  _PageAccueilState createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _allTitles = [];
  List<Map<String, dynamic>> _filteredTitles = [];

  Future<void> _getAllTitles(DAO dao) async {
    List<Map<String, dynamic>> data = await dao.getAll("JEU");
    List<Map<String, dynamic>> titles = data
        .asMap()
        .entries
        .map((entry) => {
              'index': entry.key + 1, // L'index d'origine (1-based)
              'title': entry.value['titre_jeu']
            })
        .toList();
    setState(() {
      _allTitles = titles;
      _filteredTitles = titles; // Initialement, tous les titres sont affichés
    });
  }

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Filtrer les jeux"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Fermer la boîte de dialogue
              },
              child: const Text("Annuler"),
            ),
          ],
        );
      },
    );
  }

  void _filterTitles(String query) {
    setState(() {
      _filteredTitles = _allTitles
          .where((item) =>
              item['title'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _getAllTitles(dao);
    _searchController.addListener(() {
      _filterTitles(_searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
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
      body: _filteredTitles.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: "Rechercher un jeu...",
                        prefixIcon: const Icon(
                            Icons.search), // Icône de recherche à gauche
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.filter_alt),
                          onPressed: () {
                            // Ajoutez ici la logique pour ouvrir un menu ou une boîte de dialogue
                            _showFilterDialog(context);
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      children: _filteredTitles.map((item) {
                        return GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/jeu',
                              arguments:
                                  item['index']), // Utilise l'index d'origine
                          child: _constructeurCarteJeu(
                              item['index'], item['title']),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _constructeurCarteJeu(int index, String titre) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset("assets/images/jeux/$titre.png"),
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
            child: Text(titre),
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
                  DecorationImage(image: AssetImage("assets/images/logo.png"))),
          child: Text(''),
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
