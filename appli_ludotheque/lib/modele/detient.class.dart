class Detient {
  int? idRole;
  int? idPerm;

  Detient({
    this.idRole,
    this.idPerm,
  });

  factory Detient.fromJson(Map<String, dynamic> json) {
    return Detient(
      idRole: json['id_role'],
      idPerm: json['id_perm'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_role': idRole,
      'id_perm': idPerm,
    };
  }
}
