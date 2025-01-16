import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../dao.class.dart';

DAO dao = DAO();

class PageJeu extends StatelessWidget {
  const PageJeu({super.key});

  // Fonction pour récupérer les informations d'un jeu
  Future<Map<String, dynamic>?> _getGameInfoById(DAO dao, int gameId) async {
    List<Map<String, dynamic>> data = await dao.getAll("JEU");
    Map<String, dynamic>? gameInfo = data.firstWhere(
        (item) => item['id_jeu'] == gameId // Si aucun jeu trouvé, retourne null
        );
    return gameInfo;
  }

  @override
  Widget build(BuildContext context) {
    // Récupérer l'ID du jeu depuis les arguments de la route
    int gameId = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text('Détails du jeu n°$gameId'),
      ),
      body: FutureBuilder<Map<String, dynamic>?>(
        future: _getGameInfoById(dao, gameId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
                child: Text("Erreur lors du chargement des données."));
          } else if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: Text("Aucun jeu trouvé."));
          } else {
            // Récupérer les données du jeu
            Map<String, dynamic> gameInfo = snapshot.data!;
            return _afficherDetailsJeu(context, gameInfo);
          }
        },
      ),
    );
  }

  // Widget pour afficher les détails du jeu
  Widget _afficherDetailsJeu(
      BuildContext context, Map<String, dynamic> gameInfo) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _nomEtPhotoJeu(context, gameInfo),
              const SizedBox(width: 16),
              Expanded(child: _videoJeu(context, gameInfo['lien_youtube'])),
            ],
          ),
          const SizedBox(height: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titreDesc("Description"),
              const SizedBox(height: 16),
              _contenuDesc(
                  gameInfo['desc_jeu'] ?? "Aucune description disponible."),
            ],
          ),
        ],
      ),
    );
  }

  // Widget pour le nom et la photo du jeu
  Widget _nomEtPhotoJeu(BuildContext context, Map<String, dynamic> gameInfo) {
    String titre = gameInfo['titre_jeu'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 175,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: gameInfo['image'] != null
              ? Image.network(gameInfo['image'], fit: BoxFit.cover)
              : Image.asset("assets/images/jeux/$titre.png"),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            gameInfo['titre_jeu'] ?? 'Nom du jeu',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  // Widget pour la vidéo explicative
  Widget _videoJeu(BuildContext context, String url) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            "Vidéo explicative",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 200,
          width: 225,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: () {
              // Ouvrir l'URL dans un navigateur ou une autre action ici
              launch(
                  url); // Assurez-vous d'avoir importé le package 'url_launcher'
            },
            child: Center(
              child: Text(
                "Voir la vidéo",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Widget pour le titre de la description
  Widget _titreDesc(String description) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        description,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Widget pour le contenu de la description
  Widget _contenuDesc(String contenu) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        contenu,
        style: const TextStyle(fontSize: 24),
        softWrap: true, // Le texte va se replier si nécessaire
        overflow: TextOverflow
            .fade, // En cas de trop grand texte, il ne débordera pas
      ),
    );
  }
}
