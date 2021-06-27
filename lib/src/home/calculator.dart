import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '/src/home/calculator_controller.dart';
import '/src/shared/widgets/display_widget.dart';
import '/src/shared/widgets/keyboard_widget.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Controller _controller = Controller();

  var operation = "";
  var result = 0.0;
  var a;
  var b;
  var currentOp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F2D39),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Display(operation: operation),
            ),
            SizedBox(height: 8.0),
            Expanded(
              flex: 3,
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                crossAxisCount: 4,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                itemCount: _controller.options.length,
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                  onTap: () {
                    final op = _controller.options[index];
                    if (_controller.options[index] == '=') {
                      operation =
                          _controller.separatesFunctionIntoSmallerFunctions(
                              operation, '*', '/');
                      operation =
                          _controller.separatesFunctionIntoSmallerFunctions(
                              operation, '-', '+');
                    } else {
                      operation += _controller.options[index];
                    }
                    switch (op) {
                      case "AC":
                        {
                          a = null;
                          b = null;
                          result = 0.0;
                          operation = "";
                          break;
                        }
                      case "+":
                        {
                          currentOp = op;
                          break;
                        }
                      case "-":
                        {
                          currentOp = op;
                          break;
                        }
                      case "*":
                        {
                          currentOp = op;
                          break;
                        }
                      case "/":
                        {
                          currentOp = op;
                          break;
                        }
                      case "=":
                        {
                          break;
                        }
                    }
                    setState(() {});
                  },
                  child: Keyboard(
                    text: _controller.options[index],
                    colorButton: index == 18
                        ? Color(0xFF7C5EFE)
                        : index == 3
                            ? Color(0xFFBFBFC1)
                            : index == 7
                                ? Color(0xFFBFBFC1)
                                : index == 11
                                    ? Color(0xFFBFBFC1)
                                    : index == 15
                                        ? Color(0xFFBFBFC1)
                                        : Colors.black.withOpacity(0.4),
                    textColor: index == 0
                        ? Color(0xFF7C5EFE)
                        : index == 1
                            ? Color(0xFF7C5EFE)
                            : index == 3
                                ? Color(0xFF212121)
                                : index == 7
                                    ? Color(0xFF212121)
                                    : index == 11
                                        ? Color(0xFF212121)
                                        : index == 15
                                            ? Color(0xFF212121)
                                            : Color(0xFFBFBFC1),
                  ),
                ),
                staggeredTileBuilder: (index) {
                  if (index == 18) {
                    return StaggeredTile.count(2, 1);
                  } else {
                    return StaggeredTile.count(1, 1);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
