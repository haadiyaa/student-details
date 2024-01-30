import 'package:flutter/material.dart';
import 'package:student_login_project/Model/model.dart';
import 'package:student_login_project/controller/student_db.dart';
import 'package:student_login_project/view/widgets/mystyles.dart';
import 'package:student_login_project/view/widgets/studenttile.dart';

class StudentList extends StatelessWidget {
  const StudentList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder: (context, value, child) {
          return ListView.separated(
            itemCount: value.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
            itemBuilder: (BuildContext context, int index) {
              final data=value[index];
              return StudentTile(data: data);
            },
          );
        },
      ),
    );
  }
}
