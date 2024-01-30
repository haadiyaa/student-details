import 'package:flutter/material.dart';

class DetailsTable extends StatelessWidget {
  const DetailsTable({
    super.key,
    required this.rollNo,
    required this.name,
    required this.age,
    required this.address, required this.id,
  });
  final int? id;
  final String rollNo;
  final String name;
  final String age;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Table(
        
        border: TableBorder.all(),
        children: [
          TableRow(
            children: [
              const TableCell(child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Roll No:'),
              )),
              TableCell(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(rollNo),
              )),
            ],
          ),
          TableRow(
            children: [
              const TableCell(child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Name:'),
              )),
              TableCell(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name),
              )),
            ],
          ),
          TableRow(
            children: [
              const TableCell(child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Age:'),
              )),
              TableCell(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(age),
              )),
            ],
          ),
          TableRow(
            children: [
              const TableCell(child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Address:'),
              )),
              TableCell(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(address),
              )),
            ],
          ),
        ],
      ),
    );
  }
}