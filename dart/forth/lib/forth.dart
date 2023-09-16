import 'package:stack/stack.dart';

class Forth {
  List<int>? stack;

  void evaluate(String input) {
    Stack<int> stack = new Stack();

    List<String> str = input.split(' ');
    str.forEach((element) {
      stack.push(int.parse(element));
    });
  }
}
