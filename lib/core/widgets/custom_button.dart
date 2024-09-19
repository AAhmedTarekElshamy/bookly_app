import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      this.fontSize, this.onPressed});
  final Color backgroundColor;
 final  void Function()? onPressed;
  final Color textColor;
  final String text;
  final double? fontSize;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize ?? 18,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }
}
