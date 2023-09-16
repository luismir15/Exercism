import 'dart:math';

/**
 * i'm getting a string of numbers
 */
class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    num count = 0;
    int numberLength = number.length;
    int armstrong = int.parse(number);

    List<String> str = number.split('');
    List<int> digits = str.map((digit) => int.parse(digit)).toList();

    for (int digit in digits) {
      count += pow(digit, numberLength);
    }

    print(count);

    return armstrong == count;
  }
}
