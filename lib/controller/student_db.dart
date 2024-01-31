import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:student_login_project/Model/model.dart';

ValueNotifier<List<Student>> studentListNotifier = ValueNotifier([]);

Database? _database;

Future<Database> get database async {
  if (_database != null) return _database!;
  _database = await initDB('student.db');
  return _database!;
}

Future<Database> initDB(String s) async {
  final dbpath = await getDatabasesPath();
  final String path = join(s);
  return await openDatabase(path, version: 1, onCreate: createDB);
}

Future<void> createDB(Database db, int version) async {
  await db.execute('''
    CREATE TABLE StudentTable (id INTEGER PRIMARY KEY,rollno TEXT NOT NULL,name TEXT NOT NULL,address TEXT NOT NULL,age TEXT NOT NULL)
    ''');
}
//--------------/////////////////////////////-------------------------------------------------

Future<void> addStudent(Student value) async {
  final db = await database;
  await db.rawInsert(
      'INSERT INTO StudentTable (rollno, name,address,age) values(?,?,?,?)',
      [value.rollNo, value.name, value.address, value.age]);
  getAllStudents();
  print('added');
}

Future<void> getAllStudents() async {
  final _values = await _database!.rawQuery('SELECT * FROM StudentTable');
  print(_values);
  studentListNotifier.value.clear();
  _values.forEach((map) {
    final student = Student.fromMap(map);
    studentListNotifier.value.add(student);
  });
  studentListNotifier.notifyListeners();
}

Future<void> deleteStudent(int? id) async {
  await _database!.rawDelete('DELETE FROM StudentTable WHERE id= ?', [id]);
  print('deleted');
  getAllStudents();
}

// Future<void> updateStudent(int? id,String rollNo, String name,String age,String address ) async{
//   final db=await database;
//   await _database!.rawUpdate('UPDATE StudentTable SET rollno=?,name=?,age=?,address=? WHERE id=?',[rollNo,name,age,address,id]);
//   print('updated');
//   getAllStudents();
// }

Future<void> updateStudent(Student toUpdate) async{
  final db=await database;
   await db.update('StudentTable',toUpdate.toMap(),where: 'id=?',whereArgs: [toUpdate.id],conflictAlgorithm: ConflictAlgorithm.replace);
  print('updated');
  getAllStudents();
  studentListNotifier.notifyListeners();
}


