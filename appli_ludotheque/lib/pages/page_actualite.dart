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
      ),
    );
  }
}