class Exercise {
  late int id;
  late String title;
  late String description;
  late String descriptionFull;
  late String image;
  late String linkVideo;
  // ignore: non_constant_identifier_names
  late int id_musculation;

  Exercise(this.title, this.description, this.descriptionFull, this.image, this.linkVideo, this.id_musculation);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'title': title,
      'description': description,
      'descriptionFull': descriptionFull,
      'image': image,
      'linkVideo': linkVideo,
      'id_musculation': id_musculation
    };
    return map;
  }

  Exercise.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    description = map['description'];
    descriptionFull = map['descriptionFull'];
    image = map['image'];
    linkVideo = map['linkVideo'];
    id_musculation = map['id_musculation'];
  }
}
