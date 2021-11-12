import 'package:quiz_app_ii_example/model/bca/option.dart';

import '../../model/bca/option.dart';
import '../../model/bca/question.dart';

final questions = [
  QuestionBca(
    text: 'C++ belongs to which category of Programming Language?',
    options: [
      OptionBca(code: 'A', text: 'Procedural', isCorrect: false),
      OptionBca(code: 'B', text: 'Modular', isCorrect: false),
      OptionBca(code: 'C', text: 'Object Oriented', isCorrect: true),
      OptionBca(code: 'D', text: 'Structured', isCorrect: false),
    ],
    solution:
        'Object-oriented language it provides three basic features like Inheritance, Encapsulation, and Polymorphism.',
  ),
  QuestionBca(
    text:
        'The mechanism by which the data and functions are bound together within an objects is called as____',
    options: [
      OptionBca(code: 'A', text: 'Overriding', isCorrect: false),
      OptionBca(code: 'B', text: 'Polymorphism', isCorrect: false),
      OptionBca(code: 'C', text: 'Overloading', isCorrect: false),
      OptionBca(code: 'D', text: 'Encapsulation', isCorrect: true),
    ],
    solution:
        'A process of combining data members and functions in a single unit called class.',
  ),
  QuestionBca(
    text: 'The group of data and operations together are known as ?',
    options: [
      OptionBca(code: 'A', text: 'Object', isCorrect: true),
      OptionBca(code: 'B', text: 'Function', isCorrect: false),
      OptionBca(code: 'C', text: 'Class', isCorrect: false),
      OptionBca(code: 'D', text: 'Structure', isCorrect: false),
    ],
    solution:
        'The main purpose of C++ programming is to add object orientation to the C programming language',
  ),
  QuestionBca(
    text: '______ allows a class to be derived from an existing class',
    options: [
      OptionBca(code: 'A', text: 'Object', isCorrect: false),
      OptionBca(code: 'B', text: 'Inheritance', isCorrect: true),
      OptionBca(code: 'C', text: "Polymorphism", isCorrect: false),
      OptionBca(code: 'D', text: "Encapsulation", isCorrect: false),
    ],
    solution:
        'Inheritance allows us to define a class in terms of another class, which makes it easier to create and maintain an application.',
  ),
  QuestionBca(
    text: ' Which element is said to keep bones strong?',
    options: [
      OptionBca(code: 'A', text: '//Comment', isCorrect: true),
      OptionBca(code: 'B', text: '/Comment/', isCorrect: false),
      OptionBca(code: 'C', text: 'Comment//', isCorrect: false),
      OptionBca(
        code: 'D',
        text: 'None of the above',
        isCorrect: false,
      ),
    ],
    solution: 'Comments are used for the user understanding of the program',
  ),
  QuestionBca(
    text:
        ') For inserting a new line in C++ program, which one of the following statements can be used?',
    options: [
      OptionBca(code: 'A', text: "\n", isCorrect: true),
      OptionBca(code: 'B', text: '\r', isCorrect: false),
      OptionBca(code: 'C', text: '\a', isCorrect: false),
      OptionBca(code: 'D', text: 'None of the above', isCorrect: false),
    ],
    solution:
        'To insert a new line or to jump on to the next line, one can use the "\n.',
  ),
  QuestionBca(
    text:
        'Which of the following is the correct syntax to read the single character to console in the C++ language??',
    options: [
      OptionBca(code: 'A', text: 'Read ch()', isCorrect: false),
      OptionBca(code: 'B', text: 'Getline vh()', isCorrect: false),
      OptionBca(code: 'C', text: 'get(ch)', isCorrect: true),
      OptionBca(
        code: 'D',
        text: 'Scanf(ch)',
        isCorrect: false,
      ),
    ],
    solution:
        'The "cin.get()" is one of the several functions provided in C++ language that is used to read the single or multiple characters to console.',
  ),
  QuestionBca(
    text: ' Which one of the following represents the tab?',
    options: [
      OptionBca(code: 'A', text: '/n', isCorrect: false),
      OptionBca(code: 'B', text: '/t', isCorrect: true),
      OptionBca(code: 'C', text: '/r', isCorrect: false),
      OptionBca(
        code: 'D',
        text: 'None of the above',
        isCorrect: false,
      ),
    ],
    solution:
        'The "\t" is a type of space sequence representing the tab, which means a set of blank space adds to the line.',
  ),
  QuestionBca(
    text: 'Among the following, which shows the Multiple inheritances?',
    options: [
      OptionBca(code: 'A', text: 'X,Y->Z', isCorrect: true),
      OptionBca(code: 'B', text: 'X->Y->Z', isCorrect: false),
      OptionBca(code: 'C', text: 'X->Y;X->Z', isCorrect: false),
      OptionBca(
        code: 'D',
        text: 'None of the above',
        isCorrect: false,
      ),
    ],
    solution:
        'In multiple inheritances, a single class can inherit properties form more than one base class.',
  ),
  QuestionBca(
    text: ') Which type of approach is used by the C++ language?',
    options: [
      OptionBca(code: 'A', text: 'Right to left', isCorrect: false),
      OptionBca(code: 'B', text: 'Left to right', isCorrect: false),
      OptionBca(code: 'C', text: 'Top to bottom', isCorrect: false),
      OptionBca(
        code: 'D',
        text: 'Bottom-up',
        isCorrect: true,
      ),
    ],
    solution:
        'Generally, C++ uses the Bottom-up approach while other programming languages like C use the top-down approach.',
  ),
];
