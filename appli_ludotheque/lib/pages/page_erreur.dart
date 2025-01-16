import 'package:flutter/material.dart';

class PageErreur extends StatelessWidget {
  const PageErreur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Erreur'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.black54),
            SizedBox(height: 16),
            Text('Page non trouvée'),
          ],
        ),
      ),
    );
  }
}
