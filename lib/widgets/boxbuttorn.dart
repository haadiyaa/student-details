import 'package:flutter/material.dart';
import 'package:student_login_project/widgets/mystyles.dart';

class BoxButton extends StatelessWidget {
  final String title;
  final Color color;
  final Widget? leading;

  const BoxButton({
    super.key,
    required this.title,
    required this.color,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(microseconds: 350),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if(leading!=null)leading!,
            if(leading!=null)const SizedBox(height: 5,),
            Text(
              title,
              style: buttonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
