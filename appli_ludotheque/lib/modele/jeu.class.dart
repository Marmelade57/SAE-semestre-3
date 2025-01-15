class Jeu {
  int? idJeu;
  String titreJeu;
  String descJeu;
  bool disponible;
  String image;
  String lienImage;
  String lienYoutube;
  DateTime? dateAjout;
  DateTime? datePublication;

  Jeu({
    this.idJeu,
    required this.titreJeu,
    required this.descJeu,
    required this.disponible,
    required this.image,
    required this.lienImage,
    required this.lienYoutube,
    this.dateAjout,
    this.datePublication,
  });

  factory Jeu.fromJson(Map<String, dynamic> json) {
    return Jeu(
      idJeu: json['id_jeu'],
      titreJeu: json['titre_jeu'],
      descJeu: json['desc_jeu'],
      disponible: json['disponible'] == 1,
      image: json['image'],
      lienImage: json['lien_image'],
      lienYoutube: json['lien_youtube'],
      dateAjout: json['date_ajout'] != null
          ? DateTime.parse(json['date_ajout'])
          : null,
      datePublication: json['date_publication'] != null
          ? DateTime.parse(json['date_publication'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_jeu': idJeu,
      'titre_jeu': titreJeu,
      'desc_jeu': descJeu,
      'disponible': disponible ? 1 : 0,
      'image': image,
      'lien_image': lienImage,
      'lien_youtube': lienYoutube,
      'date_ajout': dateAjout?.toIso8601String(),
      'date_publication': datePublication?.toIso8601String(),
    };
  }
}
