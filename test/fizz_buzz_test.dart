import 'package:fizz_buzz/fizz_buzz.dart';
import 'package:test/test.dart';

void main() {
  group('FizzBuzz Machine Arr Tester', () {
    test('return one fizz and one buzz when given a limit of 5', () {
      expect(fizzBuzzMachine(5), [1, 2, 'Fizz', 4, 'Buzz']);
    });
    test('return list of number when there is no fizz or fizzbuzz or buzz', () {
      expect(fizzBuzzMachine(2), [1, 2]);
    });

    test('No Buzz', () {
      expect(fizzBuzzMachine(15), [
        1,
        2,
        'Fizz',
        4,
        'Buzz',
        'Fizz',
        7,
        8,
        'Fizz',
        'Buzz',
        11,
        'Fizz',
        13,
        14,
        'FizzBuzz'
      ]);
    });
  });
}
