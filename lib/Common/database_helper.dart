import 'dart:io';

import 'package:project_musculation/Models/exercise.dart';
import 'package:project_musculation/Models/musculation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static Database? _database;
  DatabaseHelper._crateInstance();

  factory DatabaseHelper() => _databaseHelper ??= DatabaseHelper._crateInstance();

  Future<Database> get database async => _database ??= await initializeDatabase();

  Future<Database> initializeDatabase() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = "${dir.path}dbmusculation.db";
    var exercisesDatabase = await openDatabase(path, version: 1, onCreate: _createDatabase);
    return exercisesDatabase;
  }

  void _createDatabase(Database db, int version) async {
    await db.execute("CREATE TABLE dbmusculation(id INTEGER PRIMARY KEY AUTOINCREMENT, description TEXT, title TEXT, image TEXT, id_category INTEGER)");
    await db.execute("CREATE TABLE dbexercises(id INTEGER PRIMARY KEY AUTOINCREMENT, description TEXT, descriptionFull TEXT, title TEXT, image TEXT, linkVideo TEXT, id_musculation INTEGER)");
    await db.execute("CREATE TABLE dbcategory(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT)");
    // close();
  }

  Future<int> insertDatabase(String table, dynamic object) async {
    Database db = await database;
    var result = db.insert(table, object.toMap());
    return result;
  }

  Future<List<Musculation>> getMusculationTable() async {
    Database db = await database;
    var result = await db.query("dbmusculation");
    List<Musculation> list = result.isNotEmpty ? result.map((c) => Musculation.fromMap(c)).toList() : [];
    return list;
  }

  Future<List<Exercise>> getExercisesWithID(int id) async {
    Database db = await database;
    var result = await db.rawQuery('SELECT * FROM dbexercises WHERE id_musculation=?', [id]);
    List<Exercise> list = result.isNotEmpty ? result.map((c) => Exercise.fromMap(c)).toList() : [];
    return list;
  }

  Future deleteDataBase() async {
    Database db = await database;
    await db.execute("DELETE FROM dbexercises");
    await db.execute("DELETE FROM dbmusculation");
    await db.execute("DELETE FROM dbcategory");
  }

  Future close() async {
    Database db = await database;
    db.close();
  }
}
