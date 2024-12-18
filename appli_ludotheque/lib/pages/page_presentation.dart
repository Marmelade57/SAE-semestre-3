import 'package:flutter/material.dart';
// Aller dans le dossier du projet et faire "flutter pub get"

class PagePresentation extends StatelessWidget {
  const PagePresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Présentation'),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              const SizedBox(height:32),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                'Qui sommes-nous ?',
                style: TextStyle(
                fontSize: 28,        // Taille de la police
                fontWeight: FontWeight.bold, // Police en gras
                color: Colors.black, // Couleur du texte
              ),
              ),
                      SizedBox(height: 16),
                    ],
                  ),
                  const Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Container(
                    height: 330,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Après avoir formé un groupe de joueurs qui ne se connaissaient pas auparavant, l’équipe a rapidement compris que le jeu n’était pas seulement le point commun de leurs rencontres, mais également une excellente raison de partager des moments inoubliables. Ainsi est née l’idée de fonder la Tablée Onirique, avec pour ambition de rassembler les gens autour des divers aspects du jeu.\n"
                      "Nous organisons chaque année en été un festival nommé Le Festival Onirique, il s’agit d’une reconstitution de campement médiéval fantastique avec tentes médiévales au milieu duquel nous proposons différents pôles.\n"
                      "Nous faisons des activités Loups-Garous pour adulte (16 ans et +), des parties de Jeu de Rôle pour adultes, ados et enfants, des ateliers peinture sur figurine pour ados et adultes, et enfin des ateliers jeux de plateau sur le thème médiéval fantastique pour enfants, ados et adultes."
                    ),
                  )
                ],
              ),

              const SizedBox(height:64),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                'Nos objectifs :',
                style: TextStyle(
                fontSize: 28,        // Taille de la police
                fontWeight: FontWeight.bold, // Police en gras
                color: Colors.black, // Couleur du texte
              ),
              ),
                      SizedBox(height: 16),
                    ],
                  ),
                  const Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "- Dynamiser l’activité culturelle des alentours"
                      "\n\n- Organiser des événements thématiques"
                      "\n\n- Créer un lieu de partage"
                      "\n\n- Impliquer les jeunes dans la vie associative"
                      "\n\n- Promouvoir auprès du grand public les jeux modernes"
                      "\n\n- Proposer une activité deux fois par mois"
                      ),
                  )
                ],
              ),

              const SizedBox(height:64),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                'Nous contacter',
                style: TextStyle(
                fontSize: 28,        // Taille de la police
                fontWeight: FontWeight.bold, // Police en gras
                color: Colors.black, // Couleur du texte
              ),
              ),
                      SizedBox(height: 16),
                    ],
                  ),
                  const Divider(),

            const SizedBox(height:16),

             Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Première ligne: E-mail
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'E-mail',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8), // Espacement entre le titre et le contenu
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Text('latableeonirique@gmail.com', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            const SizedBox(height: 16), // Espacement entre les lignes

            // Deuxième ligne: Adresse
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Adresse',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8), // Espacement entre le titre et le contenu
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Text('38 route nationale 57480 APACH', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            const SizedBox(height: 16), // Espacement entre les lignes

            // Troisième ligne: Réseaux
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Réseaux',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    // Bouton Image Instagram
                    IconButton(
                      onPressed: () {
                        print('Redirection vers Instagram');},
                      icon: Image.asset('../images/instagram.png', width: 40, height: 40),
                    ),
                    const SizedBox(width: 16), // Espacement entre les images
                    // Bouton Image Facebook
                    IconButton(
                      onPressed: () {
                        print('Redirection vers Facebook');},
                      icon: Image.asset('../images/facebook.png', width: 40, height: 40),
                    ),
                  ],
                ),
              ],
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