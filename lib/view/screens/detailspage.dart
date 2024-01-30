import 'package:flutter/material.dart';
import 'package:student_login_project/controller/student_db.dart';
import 'package:student_login_project/view/screens/updatestudent.dart';
import 'package:student_login_project/view/widgets/boxbuttorn.dart';
import 'package:student_login_project/view/widgets/detailstable.dart';
import 'package:student_login_project/view/widgets/mystyles.dart';

class DetailsPage extends StatelessWidget {
  final String rollNo;
  final int? id;
  final String name;
  final String age;
  final String address;
  const DetailsPage({
    super.key,
    required this.rollNo,
    required this.name,
    required this.age,
    required this.address, required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'details',
        style: appBarStyle,
      )),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 50,
            ),
            DetailsTable(
                rollNo: rollNo, name: name, age: age, address: address,id: id,),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BoxButton(
                  leading: const Icon(Icons.edit),
                  title: 'Edit',
                  color: Colors.green,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>UpdateStudent(rollNo: rollNo, name: name, age: age, address: address,id: id,)));
                  },
                ),
                
                BoxButton(
                  leading: const Icon(Icons.delete),
                  title: 'Delete',
                  color: Colors.red,
                  onTap: () {
                    deleteStudent(id);
                    Navigator.pop(context);
                  },
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
