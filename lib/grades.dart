// M2A1: write these two functions with the instructor during the demo.

/// Returns the average of [scores], or 0 when the list is empty.
library grades;

double computeAverage(List<double> scores) {
  if (scores.isEmpty) return 0.0;
  double sum = scores.reduce((a, b) => a + b);
  return sum / scores.length;
}
/// Returns "Excellent" from 90, "Passed" from 75, otherwise "Needs improvement".
String remarkFor(double average) {
  if (average >= 90) {
    return "Excellent";
  } else if (average >= 75) {
    return "Passed";
  } else {
    return "Needs improvement";
  }
}