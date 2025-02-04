import 'package:flutter/material.dart';

class PageErreur extends StatelessWidget {
  const PageErreur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Erreur'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.black54),
            SizedBox(height: 16),
            Text('Page non trouvée'),
            SizedBox(height: 16),
            _constructeurBouton(context, "/accueil", "Retour à l'accueil",
                Color.fromARGB(255, 52, 166, 191)),
          ],
        ),
      ),
    );
  }

  Widget _constructeurBouton(
      BuildContext context, String url, String texteBouton, Color couleurFond) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, url);
      },
      style: TextButton.styleFrom(
        backgroundColor: couleurFond,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 40.0, // Réduit pour s'adapter à l'écran
        ),
      ),
      child: Text(
        texteBouton,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
