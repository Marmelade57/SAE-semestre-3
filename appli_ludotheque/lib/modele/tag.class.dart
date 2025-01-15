class Tag {
  int? idTag;
  String nom;
  String description;
  String typeTag;

  Tag({
    this.idTag,
    required this.nom,
    required this.description,
    required this.typeTag,
  });

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      idTag: json['id_tag'],
      nom: json['nom_tag'],
      description: json['desc_tag'],
      typeTag: json['type_tag'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_tag': idTag,
      'nom_tag': nom,
      'desc_tag': description,
      'type_tag': typeTag,
    };
  }
}
