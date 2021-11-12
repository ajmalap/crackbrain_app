import 'package:quiz_app_ii_example/model/bca/option.dart';
import 'package:quiz_app_ii_example/model/bca/question.dart';

import '../../model/bca/option.dart';
import '../../model/bca/question.dart';

final questionspython = [
  QuestionBca(
    text: 'Is Python case sensitive when dealing with identifiers?',
    options: [
      OptionBca(code: 'A', text: 'YES', isCorrect: true),
      OptionBca(code: 'B', text: 'NO', isCorrect: false),
      OptionBca(code: 'C', text: 'Machine dependent', isCorrect: false),
      OptionBca(code: 'D', text: 'None of the mentioned', isCorrect: false),
    ],
    solution: 'Case is always significant.',
  ),
  QuestionBca(
    text: 'What is the maximum possible length of an identifier?',
    options: [
      OptionBca(code: 'A', text: '31 characters', isCorrect: false),
      OptionBca(code: 'B', text: '63 characters', isCorrect: false),
      OptionBca(code: 'C', text: '79 characters', isCorrect: false),
      OptionBca(code: 'D', text: 'None of the mentioned', isCorrect: true),
    ],
    solution: 'Identifiers can be of any length.',
  ),
  QuestionBca(
    text: 'Which of the following is invalid?',
    options: [
      OptionBca(code: 'A', text: '_a = 1', isCorrect: false),
      OptionBca(code: 'B', text: '__a = 1', isCorrect: false),
      OptionBca(code: 'C', text: '__str__ = 1', isCorrect: false),
      OptionBca(code: 'D', text: 'None of the mentioned', isCorrect: true),
    ],
    solution: 'All the statements will execute successfully but at the cost of reduced readability.',
  ),
  QuestionBca(
    text:
        ' Which of the following is an invalid variable?',
    options: [
      OptionBca(code: 'A', text: 'my_string_1', isCorrect: false),
      OptionBca(code: 'B', text: '1st_string', isCorrect: true),
      OptionBca(code: 'C', text: "foo", isCorrect: false),
      OptionBca(code: 'D', text: "_", isCorrect: false),
    ],
    solution: 'Variable names should not start with a number',
  ),
  QuestionBca(
    text: 'Which of the following is not a keyword?',
    options: [
      OptionBca(code: 'A', text: 'eval', isCorrect: true),
      OptionBca(code: 'B', text: 'assert', isCorrect: false),
      OptionBca(code: 'C', text: 'nonlocal', isCorrect: false),
      OptionBca(code: 'D', text: 'pass', isCorrect: false),
    ],
    solution: 'eval can be used as a variable.',
  ),
  QuestionBca(
    text: ' All keywords in Python are in _________',
    options: [
      OptionBca(code: 'A', text: 'lower case', isCorrect: false),
      OptionBca(code: 'B', text: 'UPPER CASE', isCorrect: false),
      OptionBca(code: 'C', text: 'Capitalized', isCorrect: false),
      OptionBca(
        code: 'D',
        text: 'None of the mentioned',
        isCorrect: true,
      ),
    ],
    solution: 'True, False and None are capitalized while the others are in lower case.',
  ),
  QuestionBca(
    text: 'Which of the following cannot be a variable?',
    options: [
      OptionBca(code: 'A', text: '__init__', isCorrect: false),
      OptionBca(code: 'B', text: 'in', isCorrect: true),
      OptionBca(code: 'C', text: 'it', isCorrect: false),
      OptionBca(code: 'D', text: 'on', isCorrect: false),
    ],
    solution: 'in is a keyword.',
  ),
];
