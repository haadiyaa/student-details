import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:student_login_project/view/screens/homepage.dart';
import 'package:student_login_project/controller/student_db.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await database;
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}