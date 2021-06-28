import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/home/calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fluter Calculator',
      home: Calculator(),
    );
  }
}
