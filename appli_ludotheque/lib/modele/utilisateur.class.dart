class Utilisateur {
  int? idUser;
  String nomUser;
  String prenomUser;
  int? idRole;

  Utilisateur({
    this.idUser,
    required this.nomUser,
    required this.prenomUser,
    this.idRole,
  });

  factory Utilisateur.fromJson(Map<String, dynamic> json) {
    return Utilisateur(
      idUser: json['id_user'],
      nomUser: json['nom_user'],
      prenomUser: json['prenom_user'],
      idRole: json['id_role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_user': idUser,
      'nom_user': nomUser,
      'prenom_user': prenomUser,
      'id_role': idRole,
    };
  }
}
