class Concerne {
  int? idJeu;
  int? idActu;

  Concerne({
    this.idJeu,
    this.idActu,
  });

  factory Concerne.fromJson(Map<String, dynamic> json) {
    return Concerne(
      idJeu: json['id_jeu'],
      idActu: json['id_actu'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_jeu': idJeu,
      'id_actu': idActu,
    };
  }
}
