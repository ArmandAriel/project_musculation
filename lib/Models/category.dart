class Category {
  late int id;
  late String title;

  Category(this.title);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{'title': title};
    return map;
  }

  Category.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
  }
}
