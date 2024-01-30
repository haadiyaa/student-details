import 'package:flutter/material.dart';
import 'package:student_login_project/view/widgets/mystyles.dart';

class BoxInputField extends StatelessWidget {
  final TextEditingController controller;
  final Widget placeholder;
  final String? Function(String?)? validator;
  final int? line;

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
      color: Colors.blue,
    ),
  );

  BoxInputField(
      {super.key,
      required this.controller,
      required this.placeholder,
      this.validator, this.line});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.top,
      maxLines: line,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        errorMaxLines: 10,
        errorStyle: const TextStyle(
          overflow: TextOverflow.clip,
        ),
        label: placeholder,
        labelStyle: bodyTextStyle,
        alignLabelWithHint: true,
        focusedBorder: buildFocusBorder,
        border: buildBorder,
        enabledBorder: buildenabled,
      ),
    );
  }
}
