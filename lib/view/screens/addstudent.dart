import 'package:flutter/material.dart';
import 'package:student_login_project/Model/model.dart';
import 'package:student_login_project/controller/student_db.dart';
import 'package:student_login_project/view/widgets/boxbuttorn.dart';
import 'package:student_login_project/view/widgets/boxinputfield.dart';
import 'package:student_login_project/view/widgets/mystyles.dart';

class AddStudent extends StatelessWidget {
  final _controllerName = TextEditingController();
  final _controllerAddress = TextEditingController();
  final _controllerRollNo = TextEditingController();
  final _controllerAge = TextEditingController();
  final _key = GlobalKey<FormState>();

  AddStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add New Student",
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
                      controller: _controllerRollNo,
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
                      controller: _controllerName,
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
                      controller: _controllerAge,
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
                      controller: _controllerAddress,
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
                          onAddStudentClick();
                          Navigator.pop(context);
                          getAllStudents();
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
  
  Future<void> onAddStudentClick() async{
    final _name=_controllerName.text;
    final _rollNo=_controllerRollNo.text;
    final _age=_controllerAge.text;
    final _address=_controllerAddress.text;

    final _student=Student(rollNo: _rollNo, address: _address, age: _age, name: _name);

    addStudent(_student);
    
  }
}
