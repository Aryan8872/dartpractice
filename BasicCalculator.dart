import 'dart:io';

void main() {
  try {
    double num1 = getNum("Enter the first number: ");
    double num2 = getNum("Enter the second number: ");
    String op = getOp();

    double? res = calc(num1, num2, op);

    if (res != null) {
      print("Result: $res");
    } else {
      print("Error: Invalid operation or division by zero.");
    }
  } catch (e) {
    print("An error occurred: $e");
  }
}

double getNum(String msg) {
  while (true) {
    stdout.write(msg);
    try {
      return double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Invalid input. Please enter a valid number.");
    }
  }
}

String getOp() {
  const ops = ['+', '-', '*', '/'];
  while (true) {
    stdout.write("Enter an operator (+, -, *, /): ");
    String? input = stdin.readLineSync();
    if (input != null && ops.contains(input)) {
      return input;
    } else {
      print("Invalid operator. Please try again.");
    }
  }
}

double? calc(double num1, double num2, String op) {
  switch (op) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      return num2 != 0 ? num1 / num2 : null;
    default:
      return null; 
  }
}
