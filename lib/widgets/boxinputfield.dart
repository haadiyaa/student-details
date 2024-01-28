import 'package:flutter/material.dart';

class BoxInputField extends StatelessWidget {
  final TextEditingController controller;
  final Widget placeholder;
  final String Function(String?)? validator;

  InputBorder buildFocusBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    borderSide: BorderSide(
      color: Colors.green,
      width: 1.5,
    ),
  );
  InputBorder buildBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );
  InputBorder buildenabled = const OutlineInputBorder(
    borderSide: BorderSide(
      width: 1.5,
      // color: Color.fromARGB(255, 167, 116, 255),
    ),
  );

  BoxInputField(
      {super.key,
      required this.controller,
      required this.placeholder,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        errorMaxLines: 10,
        errorStyle: const TextStyle(
          overflow: TextOverflow.clip,
        ),
        label: placeholder,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 190, 190, 190),
        ),
        focusedBorder: buildFocusBorder,
        border: buildBorder,
        enabledBorder: buildenabled,
      ),
    );
  }
}
