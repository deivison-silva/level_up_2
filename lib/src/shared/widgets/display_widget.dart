import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({Key? key, required this.operation}) : super(key: key);

  final String operation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 8.0, right: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding:
                const EdgeInsets.only(right: 24.0, bottom: 24.0, left: 24.0),
            child: Text(
              operation,
              maxLines: 1,
              style: TextStyle(
                color: Color(0xFFBFBFC1),
                fontSize: 50.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
