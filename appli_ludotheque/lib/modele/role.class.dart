class Role {
  int? idRole;
  String nomRole;
  String descRole;

  Role({
    this.idRole,
    required this.nomRole,
    required this.descRole,
  });

  factory Role.fromJson(Map<String, dynamic> json) {
    return Role(
      idRole: json['id_role'],
      nomRole: json['nom_role'],
      descRole: json['desc_role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_role': idRole,
      'nom_role': nomRole,
      'desc_role': descRole,
    };
  }
}
