import 'package:quiz_app_ii_example/model/bca/option.dart';

import '../../model/bca/option.dart';
import '../../model/bca/question.dart';

final questionsC = [
  QuestionBca(
    text: 'In the standard library of C programming language, which of the following header file is designed for basic mathematical operations?',
    options: [
      OptionBca(code: 'A', text: 'math.h', isCorrect: true),
      OptionBca(code: 'B', text: 'conio.h', isCorrect: false),
      OptionBca(code: 'C', text: 'dos.h', isCorrect: false),
      OptionBca(code: 'D', text: 'stdio.h', isCorrect: false),
    ],
    solution: 'math.h is a header file in the standard library designed for basic mathematical operations',
  ),
  QuestionBca(
    text: 'Which library function can convert an integer/long to a string?',
    options: [
      OptionBca(code: 'A', text: 'ltoa()', isCorrect: true),
      OptionBca(code: 'B', text: 'ultoa()', isCorrect: false),
      OptionBca(code: 'C', text: 'sprintf()', isCorrect: false),
      OptionBca(code: 'D', text: 'None of the above', isCorrect: false),
    ],
    solution: 'In C, ltoa() function converts long/integer data type to string data type. char *ltoa(long N, char *str, int base);',
  ),
  QuestionBca(
    text: 'fgets() function is safer than gets() because in fgets() function you can specify the size of the buffer into which the supplied string will be stored.',
    options: [
      OptionBca(code: 'A', text: 'TRUE', isCorrect: true),
      OptionBca(code: 'B', text: 'FALSE', isCorrect: false),
    ],
    solution: 'Both functions retrive and store a string from console or file, but fgets() functions are more safer to use then gets() because gets() doesn'"t facilitate to detail the length of the buffer to store the string in and fgets() facilitates to specify a maximum string length"
  ),
  QuestionBca(
    text:
        'Following is the invalid inclusion of a file to the current program. Identify it.',
    options: [
      OptionBca(code: 'A', text: '#include <file>', isCorrect: false),
      OptionBca(code: 'B', text: '#include “file”', isCorrect: false),
      OptionBca(code: 'C', text: "#include < file", isCorrect: true),
      OptionBca(code: 'D', text: "All of the above are invalid.", isCorrect: false),
    ],
    solution: 'option (a) & (b) are valid. There is no such syntax or provision as in option (c).',
  ),
  QuestionBca(
    text: 'Choose the function that is most appropriate for reading in a multi-word string?',
    options: [
      OptionBca(code: 'A', text: 'strnset()', isCorrect: false),
      OptionBca(code: 'B', text: 'scanf()', isCorrect: false),
      OptionBca(code: 'C', text: 'strchr()', isCorrect: false),
      OptionBca(code: 'D', text: 'gets()', isCorrect: true),
    ],
    solution: 'gets (); = Collects a string of characters terminated by a new line from the standard input stream stdin',
  ),
];
