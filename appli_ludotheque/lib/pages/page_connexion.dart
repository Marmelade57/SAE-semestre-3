import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../dao.class.dart';

DAO dao = DAO();

class PageConnexion extends StatefulWidget {
  const PageConnexion({super.key});

  @override
  State<PageConnexion> createState() => _PageConnexionState();
}

class _PageConnexionState extends State<PageConnexion> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _identifiantController = TextEditingController();
  final TextEditingController _motDePasseController = TextEditingController();

  Future<List<Map<String, dynamic>>> _getInfos() async {
    List<Map<String, dynamic>> data = await dao.getAll("UTILISATEUR");
    return data
        .map((entry) => {'index': data.indexOf(entry) + 1, ...entry})
        .toList();
  }

  Future<void> _connexion() async {
    String identifiant = _identifiantController.text;
    String motDePasse = _motDePasseController.text;

    List<Map<String, dynamic>> utilisateurs = await _getInfos();

    final utilisateurValide = utilisateurs.firstWhere(
      (utilisateur) =>
          utilisateur['identifiant'] == identifiant &&
          utilisateur['mdp_user'] == motDePasse,
      orElse: () => {},
    );

    if (utilisateurValide.isNotEmpty) {
      Navigator.pushNamed(context, '/adminaccueil');
    } else {
      _afficherErreur("Identifiant ou mot de passe incorrect");
    }
  }

  void _afficherErreur(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Erreur"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 16),
                _affichageChamp("Identifiant", "Entrez votre identifiant",
                    _identifiantController),
                const SizedBox(height: 32),
                _affichageChamp("Mot de passe", "Entrez votre mot de passe",
                    _motDePasseController,
                    obscureText: true),
                const SizedBox(height: 48),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _connexion();
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[900],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                  ),
                  child: const Text(
                    "Continuer",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 32),
                _logoUrl("assets/images/logo.png",
                    "https://www.latableeonirique.com/"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _affichageChamp(
      String champ, String texteDefaut, TextEditingController controller,
      {bool obscureText = false}) {
    return Column(children: [
      Row(
        children: [
          Text(
            champ,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ],
      ),
      const SizedBox(height: 16),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: texteDefaut,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
        obscureText: obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Veuillez entrer $champ";
          }
          return null;
        },
      ),
    ]);
  }

  Widget _logoUrl(String cheminLogo, String url) {
    return IconButton(
      onPressed: () async {
        if (!await launchUrl(Uri.parse(url))) {
          _afficherErreur("Impossible d'ouvrir le lien.");
        }
      },
      icon: Image.asset(cheminLogo),
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
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/accueil');
          },
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
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          leading: const Icon(Icons.error),
          title: const Text('Exemple erreur'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/erreur');
          },
        ),
      ],
    );
  }
}
