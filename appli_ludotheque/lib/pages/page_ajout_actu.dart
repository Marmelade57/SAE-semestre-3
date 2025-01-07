import 'package:flutter/material.dart';

class PageAjoutActu extends StatelessWidget {
  const PageAjoutActu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajout - Actualité'),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              const SizedBox(height:32),
                  
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Container(
                      height: 250,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      /* child: [
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Ajoutez un titre",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        const SizedBox(height: 16),
                      ],
                    ),
                    ], */
                  )
                ],
              ),

              const SizedBox(height:64),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Jeux concernés", 
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              
                      const SizedBox(height: 16),
                    ],
                  ),
const SizedBox(height: 40),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return GestureDetector(
                        // onTap: () => Navigator.pushNamed(context, '/act'),
                        child: _buildCarteTag(
                          'Tag n°${index + 1}'
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 40),
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,  // Espace entre les deux boutons
                children : [ElevatedButton(  
                  onPressed: (){
                    print("L'actualité a été ajouté.");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green[800],  // Couleur de fond vert
                    foregroundColor: Colors.white,   // Couleur du texte blanche
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),  // Pas de coins arrondis
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0), // Espacement interne
                  ),
                  child: const Text(
                    "Ajouter", 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),]
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