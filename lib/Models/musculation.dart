import 'package:project_musculation/Common/database_helper.dart';
import 'package:project_musculation/Models/exercise.dart';

class Musculation {
  late int id;
  late String title;
  late String description;
  late String image;
  // ignore: non_constant_identifier_names
  late int id_category;
  // ignore: non_constant_identifier_names
  late List<Exercise> Exercice;

  Musculation(this.title, this.description, this.image, this.id_category);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{'title': title, 'description': description, 'image': image, 'id_category': id_category};
    return map;
  }

  Musculation.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    description = map['description'];
    image = map['image'];
    id_category = map['id_category'];
    getExercise();
  }

  getExercise() async {
    Exercice = await DatabaseHelper().getExercisesWithID(id);
  }
}
