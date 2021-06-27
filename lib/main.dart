import 'package:flutter/material.dart';
import 'src/home/calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fluter Calculator',
      home: Calculator(),
    );
  }
}