import 'dart:math';

class DifferenceOfSquares {
  num squareOfSum(int number) {
    int count = 0;
    for (int i = 0; i <= number; i++) {
      count += i;
    }

    return pow(count, 2);
  }

  num sumOfSquares(int number) {
    num count = 0;
    for (num i = 0; i <= number; i++) {
      count += pow(i, 2);
    }

    return count;
  }

  num differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }
}
