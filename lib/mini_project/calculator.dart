import 'dart:io';

void main() {
  bool status = true;
  while (status) {
    print('Do you want to start Calculator 📇');
    stdout.write('Type : y to start / n to stop :');
    var userInput = stdin.readLineSync();
    if (userInput == 'y') {
      stdout.write('Enter firstNum :');
      var firstInt = stdin.readLineSync();
      stdout.write('Enter secondNum :');
      var secondInt = stdin.readLineSync();
      double firstNum = double.parse(firstInt!);
      double secondNum = double.parse(secondInt!);
      print('======================');
      print('enter + to add ');
      print('enter - to subtraction ');
      print('enter * to multiplication ');
      print('enter / to division');
      print('enter % to modulo');
      print('');
      stdout.write('Enter operator to calculate 📏📐 :');
      var inputOperator = stdin.readLineSync();
      if (inputOperator == '+') {
        formatPrint(add(firstNum, secondNum));
      }
      if (inputOperator == '-') {
        formatPrint(sub(firstNum, secondNum));
      }
      if (inputOperator == '*') {
        formatPrint(multiply(firstNum, secondNum));
      }
      if (inputOperator == '/') {
        formatPrintDouble(division(firstNum, secondNum));
      }
      if (inputOperator == "%") {
        formatPrint(modulo(firstNum, secondNum));
      }
    }
    if (userInput == 'n') {
      status = false;
      print('End of Program ⏩⏩');
    }
  }
}

double add(double firstInt, double secondInt) {
  double res = firstInt + secondInt;
  return res;
}

double sub(double firstInt, double secondInt) {
  double res = firstInt - secondInt;
  return res;
}

double multiply(double firstInt, double secondInt) {
  double res = firstInt * secondInt;
  return res;
}

double division(double firstInt, double secondInt) {
  double res = firstInt / secondInt;
  return res;
}

double modulo(double firstInt, double secondInt) {
  double res = firstInt % secondInt;
  return res;
}

void formatPrint(double i) {
  print('Answer of calculation is : $i');
  print('==================');
}

void formatPrintDouble(double i) {
  print('Answer of calculation is : $i');
  print('===================');
}
