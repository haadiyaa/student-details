import 'package:flutter/material.dart';
import 'package:student_login_project/controller/student_db.dart';
import 'package:student_login_project/view/screens/addstudent.dart';
import 'package:student_login_project/view/widgets/boxbuttorn.dart';
import 'package:student_login_project/view/widgets/mystyles.dart';
import 'package:student_login_project/view/widgets/studentlist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          shadowColor: Colors.black,
          title: Text(
            'Student Details',
            style: appBarStyle,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BoxButton(
                leading: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black,
                ),
                title: "Add Student",
                color: Colors.green,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>AddStudent()));
                },
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            StudentList(),
          ],
        ),
      ),
    );
  }
}

