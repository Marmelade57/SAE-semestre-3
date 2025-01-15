class Contient {
  int? idTag;
  int? idJeu;

  Contient({
    this.idTag,
    this.idJeu,
  });

  factory Contient.fromJson(Map<String, dynamic> json) {
    return Contient(
      idTag: json['id_tag'],
      idJeu: json['id_jeu'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_tag': idTag,
      'id_jeu': idJeu,
    };
  }
}
