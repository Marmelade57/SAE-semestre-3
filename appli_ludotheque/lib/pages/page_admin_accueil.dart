import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageAdminAccueil extends StatefulWidget {
  const PageAdminAccueil({super.key});

  @override
  _PageAdminAccueil createState() => _PageAdminAccueil();
}

class _PageAdminAccueil extends State<PageAdminAccueil> {
  get screenWidth => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil - Admin'),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
                  const SizedBox(height: 8),
              const Text(
                'Bienvenue, Administrateur !',
                style: TextStyle(
                fontSize: 28,        // Taille de la police
                fontWeight: FontWeight.bold, // Police en gras
                color: Colors.black, // Couleur du texte
              ),
              ),
              const Divider(),
              const SizedBox(height: 8),

                IconButton(
                      onPressed: () {
                        // ignore: deprecated_member_use
                        launch("https://www.latableeonirique.com/");},
                      icon: Image.asset('../images/logo.png'),
                    ),

                    const SizedBox(height:48),

                    const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                "Ajouter à l'application",
                style: TextStyle(
                fontSize: 28,        // Taille de la police
                fontWeight: FontWeight.bold, // Police en gras
                color: Colors.black, // Couleur du texte
              ),
              ),
                      SizedBox(height: 16),
                    ],
                  ),

                  const SizedBox(height:8),

                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Espace entre les deux boutons
                children: [
              ElevatedButton(  
                  onPressed: (){
                    print("Ajout d'un jeu.");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[900],  // Couleur de fond vert
                    foregroundColor: Colors.white,   // Couleur du texte blanche
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),  // Pas de coins arrondis
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 70.0), // Espacement interne
                  ),
                  child: const Text(
                    "Jeu", 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                ElevatedButton(  
                  onPressed: (){
                    print("Ajout d'une actualité.");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[900],  // Couleur de fond vert
                    foregroundColor: Colors.white,   // Couleur du texte blanche
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),  // Pas de coins arrondis
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0), // Espacement interne
                  ),
                  child: const Text(
                    "Actualité", 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ],
              ),

              const SizedBox(height:64),

              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                "Modifier les données",
                style: TextStyle(
                fontSize: 28,        // Taille de la police
                fontWeight: FontWeight.bold, // Police en gras
                color: Colors.black, // Couleur du texte
              ),
              ),
                      SizedBox(height: 16),
                    ],
                  ),

                  const SizedBox(height:8),

                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Espace entre les deux boutons
                children: [
              ElevatedButton(  
                  onPressed: (){
                    print("Modification d'un jeu.");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[900],  // Couleur de fond vert
                    foregroundColor: Colors.white,   // Couleur du texte blanche
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),  // Pas de coins arrondis
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 70.0), // Espacement interne
                  ),
                  child: const Text(
                    "Jeu", 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                ElevatedButton(  
                  onPressed: (){
                    print("Modification d'une actualité.");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[900],  // Couleur de fond vert
                    foregroundColor: Colors.white,   // Couleur du texte blanche
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),  // Pas de coins arrondis
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0), // Espacement interne
                  ),
                  child: const Text(
                    "Actualité", 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ],
              ),

              const SizedBox(height:80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Espace entre les deux boutons
                children: [
              ElevatedButton(  
                  onPressed: (){
                    print("Déconnexion effectuée.");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red[800],  // Couleur de fond vert
                    foregroundColor: Colors.white,   // Couleur du texte blanche
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),  // Pas de coins arrondis
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0), // Espacement interne
                  ),
                  child: const Text(
                    "Déconnexion", 
                    style: TextStyle(
                      fontSize: 24,
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

  Widget _buildCarteTag(String nomTag){
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.only(right: 20, left : 20),
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