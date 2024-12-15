import 'package:flutter/material.dart';

class PageJeu extends StatelessWidget {
  const PageJeu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails du jeu '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 225,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.image, size: 64),
                      ),
              
                      const SizedBox(height: 16),
              
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nom du jeu',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            SizedBox(height: 16),
                            Text(
                              'Description du jeu actuel',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
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
                        child: const Icon(Icons.play_circle, size: 64),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    childAspectRatio: double.parse("5"),
                    crossAxisSpacing: 16,
                    physics: const NeverScrollableScrollPhysics(), // c'est quoi ? Demander à Gabin
                    children: List.generate(3, (index) {
                      return GestureDetector(
                        // onTap: () => Navigator.pushNamed(context, '/act'),
                        child: _buildCarteTag(
                          'Tag n°${index + 1}'
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 16),

                  Container(
                    height: 250,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec velit leo, mattis sed suscipit sit amet, dignissim non mi. Pellentesque accumsan et turpis eget dignissim. Suspendisse potenti. Donec elementum mollis molestie. Aenean et faucibus metus. Duis sit amet lorem enim. Maecenas viverra magna in magna volutpat, ac ultrices urna suscipit. Nam rutrum blandit tempus. Cras tempor tempor est, vel pharetra nisl consequat a. Nam ultrices tellus et aliquet imperdiet. Pellentesque tempus pharetra ipsum a tincidunt. Donec vehicula non sem cursus vestibulum. Praesent non sollicitudin urna. \n Nulla quis posuere metus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis elementum nisi nec imperdiet suscipit. Suspendisse sit amet efficitur velit. Praesent rhoncus sagittis dui vel aliquam. Etiam ut eleifend dolor. Fusce tristique risus quis auctor hendrerit. Aliquam vehicula, lectus sed porta sollicitudin, nibh velit euismod odio, eget aliquet eros odio vel arcu. Aliquam vehicula dui interdum tincidunt sagittis. Sed cursus leo quis augue auctor posuere. Curabitur vel bibendum quam. Suspendisse ut sem sit amet nunc lobortis finibus. Sed maximus ullamcorper velit, at laoreet orci sodales vitae. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi sagittis ullamcorper mi eu iaculis."
                    ),
                  )
                ],
              )
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