var countFizz = 0;
var countBuzz = 0;
var countFizzBuzz = 0;
var countNone = 0;
Map<String, int> result = {};

addEntriesResult() {
  result.addAll({
    'Fizz': countFizz,
    'Buzz': countBuzz,
    'FizzBuzz': countFizzBuzz,
    'None': countNone
  });
}

clearCounts() {
  countFizz = 0;
  countBuzz = 0;
  countFizzBuzz = 0;
  countNone = 0;
  result = {};
}

Map<String, int> fizzBuzzMachine(int tillWhen) {
  clearCounts();
  for (int i = 1; i <= tillWhen; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      ++countFizzBuzz;
    } else if (i % 5 == 0) {
      ++countBuzz;
    } else if (i % 3 == 0) {
      ++countFizz;
    } else {
      ++countNone;
    }
  }

  addEntriesResult();

  return result;
}

Map<String, int> fizzBuzzMachineArr(List<int> arr) {
  clearCounts();
  for (var element in arr) {
    if (element % 3 == 0 && element % 5 == 0) {
      ++countFizzBuzz;
    } else if (element % 5 == 0) {
      ++countBuzz;
    } else if (element % 3 == 0) {
      ++countFizz;
    } else {
      ++countNone;
    }
  }

  addEntriesResult();

  return result;
}
