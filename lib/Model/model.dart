import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

class Student {
  int? id;
  final String rollNo;
  final String age;
  final String name;
  final String address;
  Uint8List? photoName;
 

  Student({
    this.id,
    required this.rollNo,
    required this.address,
    required this.age,
    required this.name,
    this.photoName,
  });

  static Student fromMap(Map<String, dynamic> map) {
    final id = map['id'] as int;
    final rollno = map['rollno'] as String;
    final name = map['name'] as String;
    final address = map['address'] as String;
    final age = map['age'] as String;
    final photoName=map['photoName'] !=null?map['photoName']:null;
    return Student(
      id: id,
      rollNo: rollno,
      address: address,
      age: age,
      name: name,
      photoName: photoName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'rollNo': rollNo,
      'address': address,
      'age': age,
      'name': name,
      'photoName':photoName==null?'':photoName!
    };
  }
}