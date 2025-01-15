class Permission {
  int? idPerm;
  String nomPerm;
  String descPerm;

  Permission({
    this.idPerm,
    required this.nomPerm,
    required this.descPerm,
  });

  factory Permission.fromJson(Map<String, dynamic> json) {
    return Permission(
      idPerm: json['id_perm'],
      nomPerm: json['nom_perm'],
      descPerm: json['desc_perm'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_perm': idPerm,
      'nom_perm': nomPerm,
      'desc_perm': descPerm,
    };
  }
}
