import 'package:flutter/material.dart';

class PageActualite extends StatelessWidget {
  const PageActualite({super.key}); // , titre

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article n°'),
      ),
      body: SingleChildScrollView(
        child :Column(
          children: [
            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.image, size: 64),
            ),
            const SizedBox(height: 16),
            const Text(
              'Dernière modification : XX/XX/XXXX',
              style: TextStyle(fontSize: 16),
            ),
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
            ),
          ],
        )
      ),
    );
  }
}