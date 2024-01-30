import 'package:flutter/material.dart';
import 'package:student_login_project/Model/model.dart';
import 'package:student_login_project/controller/student_db.dart';
import 'package:student_login_project/view/widgets/boxbuttorn.dart';
import 'package:student_login_project/view/widgets/boxinputfield.dart';
import 'package:student_login_project/view/widgets/mystyles.dart';

class UpdateStudent extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  int? id;
  final String rollNo;
  final String name;
  final String age;
  final String address;

  UpdateStudent({
    required this.id,
    super.key,
    required this.rollNo,
    required this.name,
    required this.age,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    final controllerName = TextEditingController(text: name);
    final controllerAddress = TextEditingController(text: address);
    final controllerRollNo = TextEditingController(text: rollNo);
    final controllerAge = TextEditingController(text: age);

  Future<void> onUpdateStudentClick() async {
    final _name=controllerName.text;
    final _rollNo=controllerRollNo.text;
    final _age=controllerAge.text;
    final _address=controllerAddress.text;
    final _student=Student(address: _address,name: _name,age: _age,rollNo: _rollNo,id: id);
    updateStudent(_student);
  }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Student",
          style: appBarStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _key,
                child: Column(
                  children: [
                    BoxInputField(
                      line: 1,
                      controller: controllerRollNo,
                      placeholder: const Text('Roll No.'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Roll No.';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxInputField(
                      line: 1,
                      controller: controllerName,
                      placeholder: const Text('Student Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is empty';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxInputField(
                      line: 1,
                      controller: controllerAge,
                      placeholder: const Text('Age'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Age is empty';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxInputField(
                      line: 4,
                      controller: controllerAddress,
                      placeholder: const Text('Address'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Address is empty';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxButton(
                      title: 'Add',
                      color: Colors.green,
                      onTap: () async {
                        if (_key.currentState!.validate()) {
                          onUpdateStudentClick();
                          Navigator.pop(context);
                          // getAllStudents();
                          print('added');
                        } else {
                          print('not');
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}
