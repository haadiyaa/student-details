import 'package:flutter/material.dart';
import 'package:student_login_project/Model/model.dart';
import 'package:student_login_project/view/screens/detailspage.dart';
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DetailsPage(rollNo: data.rollNo, name: data.name, age: data.age, address: data.address,id: data.id,)),
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
              backgroundColor: Colors.amber,
              radius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
