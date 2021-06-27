import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({
    Key? key,
    required this.colorButton,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  final Color colorButton;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          color: colorButton,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w400,
              fontSize: 28.0,
            ),
          ),
        ),
      ),
    );
  }
}
