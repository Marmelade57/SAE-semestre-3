import 'package:flutter/material.dart';
// Aller dans le dossier du projet et faire "flutter pub get"

class PageConnexion extends StatelessWidget {
  const PageConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              const SizedBox(height:16),

              const Row(
                    children: [
                      Text(
                'Identifiant',
                style: TextStyle(
                fontSize: 28,        // Taille de la police
                fontWeight: FontWeight.bold, // Police en gras
                color: Colors.black, // Couleur du texte
              ),
              ),
                    ],
                  ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey[400]!, // Couleur de la bordure
                    width: 0.0, // Épaisseur de la bordure
                  ),
                ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Entrez votre identifiant",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                ],
              ),

              const SizedBox(height:48),

              const Row(
                    children: [
                      Text(
                'Mot de passe',
                style: TextStyle(
                fontSize: 28,        // Taille de la police
                fontWeight: FontWeight.bold, // Police en gras
                color: Colors.black, // Couleur du texte
              ),
              ),
                    ],
                  ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey[400]!, // Couleur de la bordure
                    width: 0.0, // Épaisseur de la bordure
                  ),
                ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Entrez votre mot de passe",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                ],
              ),

              const SizedBox(height:48),

              ElevatedButton(  
                  onPressed: (){
                    print("Se connecter");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[900],  // Couleur de fond noire
                    foregroundColor: Colors.white,   // Couleur du texte blanche
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),  // Pas de coins arrondis
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // Espacement interne
                  ),
                  child: const Text(
                    "Continuer", 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height:48),

                IconButton(
                      onPressed: () {
                        print('Redirection vers le site');},
                      icon: Image.asset('../images/logo.png'),
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