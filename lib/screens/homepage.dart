import 'package:flutter/material.dart';
import 'package:student_login_project/widgets/boxbuttorn.dart';
import 'package:student_login_project/widgets/mystyles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          shadowColor: Colors.black,
          title: Text(
            'Student Details',
            style: appBarStyle,
          ),
          actions: const [
            BoxButton(title: "Add Student", color: Colors.green)
          ],
        ),
        body: Column(),
      ),
    );
  }
}
