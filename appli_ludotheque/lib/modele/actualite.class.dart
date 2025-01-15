class Actualite {
  int? idActu;
  String nomActu;
  String descActu;
  String lienImage;
  DateTime? dateActu;

  Actualite({
    this.idActu,
    required this.nomActu,
    required this.descActu,
    required this.lienImage,
    this.dateActu,
  });

  factory Actualite.fromJson(Map<String, dynamic> json) {
    return Actualite(
      idActu: json['id_actu'],
      nomActu: json['nom_actu'],
      descActu: json['desc_actu'],
      lienImage: json['lien_image'],
      dateActu:
          json['date_actu'] != null ? DateTime.parse(json['date_actu']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_actu': idActu,
      'nom_actu': nomActu,
      'desc_actu': descActu,
      'lien_image': lienImage,
      'date_actu': dateActu?.toIso8601String(),
    };
  }
}
