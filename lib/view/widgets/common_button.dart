import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onPressed;
  final Color? backroundColor;
  final Color? textColor;
  final BorderSide? borderSide;
  final Widget? image;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backroundColor,
    this.textColor,
    this.borderSide, 
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: 360,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
            side: borderSide ?? BorderSide.none,
          ),
        ),

        onPressed: onPressed,
        child: Row(
          children: [
            SizedBox(child: image),
            text
            //Text(text, style: TextStyle(color: textColor ?? Colors.white)),
          ],
        ),
      ),
    );
  }
}
