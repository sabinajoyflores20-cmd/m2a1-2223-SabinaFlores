// M2A1 warm-up: a calculator that reads two numbers.
import 'dart:io';

void main() {
  stdout.write('Enter first number: ');
  String? input1 = stdin.readLineSync();
  
  stdout.write('Enter second number: ');
  String? input2 = stdin.readLineSync();

  double num1 = double.tryParse(input1 ?? '') ?? 0.0;
  double num2 = double.tryParse(input2 ?? '') ?? 0.0;

  print('Sum: ${num1 + num2}');
  print('Difference: ${num1 - num2}');
  print('Product: ${num1 * num2}');
  
  if (num2 != 0) {
    print('Quotient: ${num1 / num2}');
  } else {
    print('Quotient: Undefined (Division by zero)');
  }
}