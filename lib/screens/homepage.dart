import 'package:flutter/material.dart';
import 'package:student_login_project/Model/model.dart';
import 'package:student_login_project/widgets/boxbuttorn.dart';
import 'package:student_login_project/widgets/mystyles.dart';

class HomePage extends StatelessWidget {
  final String name;
  final String rollNo;
  final List<Student> studentList;
  
  const HomePage({super.key, required this.name, required this.rollNo, required this.studentList});

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
                onTap: () {},
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: studentList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal:20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(rollNo,style: bodyTextStyle,),
                            const SizedBox(width: 20,),
                            Text(name,style: bodyTextStyle,),
                          ],
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 30,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
