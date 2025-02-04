import 'dart:math';

import 'package:flutter/material.dart';

class PageActualite extends StatelessWidget {
  const PageActualite({super.key}); //String title, 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""), // Ajouter dynamiquement le titre
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(
                crossAxisCount: 1,
                shrinkWrap: true,
                childAspectRatio: double.parse("1.25"),
                physics: const NeverScrollableScrollPhysics(), // c'est quoi ? Demander à Gabin
                mainAxisSpacing: 32,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Icon(Icons.image, size: 50),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 185, 185, 184),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "    Nom actualité n°1",
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Text(overflow: TextOverflow.clip,"Lorem ipsum odor amet, consectetuer adipiscing elit. Congue aliquet imperdiet consectetur auctor enim nullam. Blandit semper volutpat; est cursus penatibus scelerisque. Accumsan aenean blandit purus quis consequat phasellus aliquam venenatis quis. Suscipit pharetra nunc fringilla dictumst morbi proin ligula. Consectetur nunc vestibulum fames libero lacus. \n Dictum euismod vitae malesuada elementum, nibh sed fermentum. Imperdiet id parturient non commodo pellentesque taciti venenatis scelerisque. Ad metus laoreet sed ex maecenas gravida. Pellentesque fermentum hac risus nisl ante primis risus. Mattis conubia urna mauris fusce in libero mauris imperdiet ridiculus? Facilisis magna hac cursus ullamcorper praesent quam. Molestie himenaeos porttitor nostra dui condimentum dui. Quam dui netus vel ridiculus ridiculus. Ultrices aliquam vivamus vivamus auctor nostra ex cras fusce. \n Interdum magna inceptos risus neque hac maecenas vel. Dictum inceptos vulputate nisi volutpat nam porttitor molestie mauris efficitur. Suspendisse rutrum suscipit sociosqu imperdiet vehicula dui. Eu adipiscing maximus turpis curae gravida ligula curabitur. Feugiat et porta aenean bibendum nunc pellentesque maecenas. Imperdiet lacinia vehicula justo cubilia urna varius. Dictumst nam phasellus luctus eleifend himenaeos cursus pulvinar. Consequat cubilia primis lectus quis phasellus. \n Lacus curabitur auctor euismod augue iaculis vel commodo conubia. Luctus etiam amet sapien mi ultrices euismod. Cubilia finibus et pellentesque dignissim pretium porttitor torquent taciti. Ac conubia commodo phasellus, ad mollis non cubilia orci. Ornare ex non leo mi amet ante hac vitae. Sodales condimentum odio odio ridiculus euismod. Dignissim in hendrerit natoque proin curabitur fames ullamcorper. Vel at praesent mus convallis auctor per penatibus sollicitudin conubia. \n Gravida arcu imperdiet sociosqu ornare; phasellus phasellus. Libero sodales arcu aenean aliquet tortor aliquet quis volutpat. Sapien taciti faucibus malesuada non eleifend lacus ex interdum. Platea orci magnis venenatis facilisis est varius luctus morbi sodales. Ex magnis velit consectetur consectetur nunc donec malesuada primis. Magnis sollicitudin sit lacinia, commodo ipsum mollis elit a. Ornare mollis dui praesent sed montes tristique faucibus natoque auctor.")
                    //Text("Ceci est la description courte de l'actualité numéro 1")
                  ),
                ]
              ),
            ],
          ),
        ),
/*      body: SingleChildScrollView(
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
        )*/
      ),
    );
  }
}