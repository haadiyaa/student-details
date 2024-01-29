import 'package:flutter/material.dart';
import 'package:student_login_project/widgets/mystyles.dart';

class BoxButton extends StatelessWidget {
  final String title;
  final Color color;
  final Widget? leading;
  final VoidCallback? onTap; 

  const BoxButton({
    super.key,
    required this.title,
    required this.color,
    this.leading, required this.onTap,
  });
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
        duration: const Duration(microseconds: 350),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if(leading!=null)leading!,
            if(leading!=null)const SizedBox(width: 5,),
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
