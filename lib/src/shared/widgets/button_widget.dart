import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
    required this.textColor,
    required this.colorButton,
    required this.func,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final Color colorButton;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: colorButton,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          onPressed: func,
          child: Text(
            text,
            style: TextStyle(
                fontSize: 24.0, fontWeight: FontWeight.w500, color: textColor),
          ),
        ),
      ),
    );
  }
}
