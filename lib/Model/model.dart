class Student {
  int? id;
  final String rollNo;
  final String age;
  final String name;
  final String address;
  String photoName;
  
  Student({
    this.id,
    required this.photoName,
    required this.rollNo,
    required this.address,
    required this.age,
    required this.name,
  });

  static Student fromMap(Map<String, Object?> map) {
    final id = map['id'] as int;
    final rollno = map['rollno'] as String;
    final name = map['name'] as String;
    final address = map['address'] as String;
    final age = map['age'] as String;
    final photoName=map['photoName'] as String;
    return Student(
        id: id, rollNo: rollno, address: address, age: age, name: name, photoName: photoName);
  }

  Map<String, dynamic> toMap() {
    return <String ,dynamic>{
      'id':id,
      'rollNo': rollNo,
      'address': address,
      'age': age,
      'name': name,
      'photoName':photoName,
    };
  }
}
