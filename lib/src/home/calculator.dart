import 'package:flutter/material.dart';
import '../shared/widgets/button_widget.dart';
import '/src/shared/widgets/display_widget.dart';
import './calculator_controller.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  CalculatorController _controller = CalculatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F2D3A),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Display(result: _controller.result),
            ),
            SizedBox(height: 8.0),
            Expanded(
              flex: 3,
              child: GridView(
                padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
                children: [
                  Button(
                      text: 'AC',
                      textColor: Color(0xFF7C5EFE),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.clear())),
                  Button(
                      text: '⌫',
                      textColor: Color(0xFF7C5EFE),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.delete())),
                  Button(
                      text: '%',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.doMod())),
                  Button(
                      text: '*',
                      textColor: Color(0xFF212121),
                      colorButton: Color(0xFFBFBFC1),
                      func: () => setState(() => _controller.doMul())),
                  //
                  Button(
                      text: '7',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("7"))),
                  Button(
                      text: '8',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("8"))),
                  Button(
                      text: '9',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("9"))),
                  Button(
                      text: '/',
                      textColor: Color(0xFF212121),
                      colorButton: Color(0xFFBFBFC1),
                      func: () => setState(() => _controller.doDiv())),
                  //
                  Button(
                      text: '4',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("4"))),
                  Button(
                      text: '5',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("5"))),
                  Button(
                      text: '6',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("6"))),
                  Button(
                      text: '-',
                      textColor: Color(0xFF212121),
                      colorButton: Color(0xFFBFBFC1),
                      func: () => setState(() => _controller.doSub())),
                  //
                  Button(
                      text: '1',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("1"))),
                  Button(
                      text: '2',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("2"))),
                  Button(
                      text: '3',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("3"))),
                  Button(
                      text: '+',
                      textColor: Color(0xFF212121),
                      colorButton: Color(0xFFBFBFC1),
                      func: () => setState(() => _controller.doSum())),
                  //
                  Button(
                      text: '0',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("0"))),
                  Button(
                      text: '.',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("."))),
                  Button(
                      text: '00',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF1C1B21),
                      func: () => setState(() => _controller.add("00"))),
                  Button(
                      text: '=',
                      textColor: Color(0xFFBFBFC1),
                      colorButton: Color(0xFF7C5EFE),
                      func: () => setState(() => _controller.doEqual())),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
