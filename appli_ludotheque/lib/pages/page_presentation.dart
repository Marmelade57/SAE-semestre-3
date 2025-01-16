import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              //const SizedBox(height:32),
              _constructeurZoneLongue("Qui sommes-nous ?",
                  "Après avoir formé un groupe de joueurs qui ne se connaissaient pas auparavant, l’équipe a rapidement compris que le jeu n’était pas seulement le point commun de leurs rencontres, mais également une excellente raison de partager des moments inoubliables. Ainsi est née l’idée de fonder la Tablée Onirique, avec pour ambition de rassembler les gens autour des divers aspects du jeu. \nNous organisons chaque année en été un festival nommé Le Festival Onirique, il s’agit d’une reconstitution de campement médiéval fantastique avec tentes médiévales au milieu duquel nous proposons différents pôles. \nNous faisons des activités Loups-Garous pour adulte (16 ans et +), des parties de Jeu de Rôle pour adultes, ados et enfants, des ateliers peinture sur figurine pour ados et adultes, et enfin des ateliers jeux de plateau sur le thème médiéval fantastique pour enfants, ados et adultes."),
              const SizedBox(height: 32),
              _constructeurZoneLongue("Nos objectifs",
                  "- Dynamiser l’activité culturelle des alentours\n\n- Organiser des événements thématiques\n\n- Créer un lieu de partage\n\n- Impliquer les jeunes dans la vie associative\n\n- Promouvoir auprès du grand public les jeux modernes\n\n- Proposer une activité deux fois par mois"),

              const SizedBox(height: 64),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nous contacter',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),

              const Divider(),

              const SizedBox(height: 16),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _constructeurZoneInfo("E-mail", "latableeonirique@gmail.com"),
                  const SizedBox(height: 16),
                  _constructeurZoneInfo(
                      "Adresse", "38 route nationale 57480 APACH"),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Réseaux',
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _logoUrl("assets/images/instagram.png",
                              "https://www.instagram.com/latableeonirique/"),
                          const SizedBox(width: 16),
                          _logoUrl("assets/images/facebook.png",
                              "https://www.facebook.com/Latableeonirique/")
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

  Widget _constructeurZoneLongue(String titre, String contenu) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            titre,
            style: const TextStyle(fontSize: 28),
          ),
          const SizedBox(height: 16),
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
            child: Text(contenu),
          )
        ],
      ),
    ]);
  }

  Widget _constructeurZoneInfo(String champ, String donnee) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          champ,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: Text(donnee, style: const TextStyle(fontSize: 16)),
        ),
      ],
    );
  }

  Widget _logoUrl(String cheminLogo, String url) {
    return IconButton(
      onPressed: () {
        // ignore: deprecated_member_use
        launch(url);
      },
      icon: Image.asset(cheminLogo, width: 40, height: 40),
    );
  }
}
