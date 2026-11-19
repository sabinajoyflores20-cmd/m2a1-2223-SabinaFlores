// M2A1: the console program that reads a name and three scores.
// Build it with the instructor during the demo.

import 'dart:io';
import 'package:m2a1/grades.dart';

void main() {
  stdout.write('What is your name?');
  String? name = stdin.readLineSync();

  List<double> inputs = [];
  for (var x = 1; x <= 3; x++) {
    stdout.write("Enter number $x?: ");
    String? input = stdin.readLineSync();
    if (input != null) {
      double number = double.tryParse(input) ?? 0.0;
      inputs.add(number);
    }
  }

double average = computeAverage(inputs);
String remark = remarkFor(average);

print("$name, for yor average score of $average. Your remark is: $remark");
}
