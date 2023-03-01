import 'package:fluttercalc/operators/operator.dart';

class Subtact extends Operator
{
   final List<num> stack;

  Subtact(this.stack);
  
  @override
  num execuce() {
    if (stack.length <= 2)
    {
      num a = stack[stack.length -1];
      num b = stack[stack.length -2];
      return a - b;
    }
    else {
      throw Exception();
    }
  }
}