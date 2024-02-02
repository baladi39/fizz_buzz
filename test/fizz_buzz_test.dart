import 'package:fizz_buzz/fizz_buzz.dart';
import 'package:test/test.dart';

void main() {
  group('FizzBuzz Machine Tester', () {
    test('Till 10', () {
      expect(fizzBuzzMachine(50),
          {'Fizz': 13, 'Buzz': 7, 'FizzBuzz': 3, 'None': 27});
    });
    test('Till 5', () {
      expect(
          fizzBuzzMachine(5), {'Fizz': 1, 'Buzz': 1, 'FizzBuzz': 0, 'None': 3});
    });
    test('Till 1', () {
      expect(
          fizzBuzzMachine(1), {'Fizz': 0, 'Buzz': 0, 'FizzBuzz': 0, 'None': 1});
    });
  });

  group('FizzBuzz Machine Arr Tester', () {
    test('No Buzz', () {
      expect(fizzBuzzMachineArr([1, 15, 13, 31]),
          {'Fizz': 0, 'Buzz': 0, 'FizzBuzz': 1, 'None': 3});
    });
    test('No Fizz', () {
      expect(fizzBuzzMachineArr([1, 10, 5, 30]),
          {'Fizz': 0, 'Buzz': 2, 'FizzBuzz': 1, 'None': 1});
    });
    test('Nothing!', () {
      expect(fizzBuzzMachineArr([1, 2, 4, 8]),
          {'Fizz': 0, 'Buzz': 0, 'FizzBuzz': 0, 'None': 4});
    });
  });
}
