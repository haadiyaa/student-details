import 'package:flutter/material.dart';
import 'package:student_login_project/Model/model.dart';
import 'package:student_login_project/view/screens/updatestudent.dart';
import 'package:student_login_project/view/widgets/mystyles.dart';

class StudentTile extends StatelessWidget {
  const StudentTile({
    super.key,
    required this.data,
  });

  final Student data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () {
        print('ljhgfdsa');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => UpdateStudent(id: data.id, rollNo: data.rollNo, name: data.name, age: data.age, address: data.address)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  data.rollNo,
                  style: bodyTextStyle,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '.',
                  style: bodyTextStyle,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  data.name,
                  style: bodyTextStyle,
                ),
              ],
            ),
            const CircleAvatar(
              child: Icon(Icons.person,size: 30,),
              radius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
