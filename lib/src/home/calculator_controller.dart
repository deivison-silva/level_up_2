class CalculatorController {
  String result = "";
  String newResult = "";
  late double numberOne;
  late double numberTwo;
  String currentOp = "";

  void add(String text) {
    result += text;
  }

  void clear() {
    result = "";
  }

  void delete() {
    String reResult = result.substring(0, result.length - 1);
    result = reResult;
  }

  void doSum() {
    numberOne = double.parse(result);
    result = "";
    currentOp = "+";
  }

  void doSub() {
    numberOne = double.parse(result);
    result = "";
    currentOp = "-";
  }

  void doMul() {
    numberOne = double.parse(result);
    result = "";
    currentOp = "x";
  }

  void doDiv() {
    numberOne = double.parse(result);
    result = "";
    currentOp = "/";
  }

  void doMod() {
    numberOne = double.parse(result);
    result = "";
    currentOp = "%";
  }

  void doEqual() {
    numberTwo = double.parse(result);
    result = "";
    double res;

    switch (currentOp) {
      case "+":
        {
          res = numberOne + numberTwo;
          result = res.toString();
          currentOp = "";
          numberOne = 0;
          numberTwo = 0;
        }
        break;

      case "-":
        {
          res = numberOne - numberTwo;
          result = res.toString();
          currentOp = "";
          numberOne = 0;
          numberTwo = 0;
        }
        break;

      case "x":
        {
          res = numberOne * numberTwo;
          result = res.toString();
          currentOp = "";
          numberOne = 0;
          numberTwo = 0;
        }
        break;

      case "/":
        {
          res = numberOne / numberTwo;
          result = res.toStringAsFixed(2);
          currentOp = "";
          numberOne = 0;
          numberTwo = 0;
        }
        break;

      case "%":
        {
          res = numberOne % numberTwo;
          int intRes = res.toInt();
          result = intRes.toString();
          currentOp = "";
          numberOne = 0;
          numberTwo = 0;
        }
        break;
    }
  }
}
