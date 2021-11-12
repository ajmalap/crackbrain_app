import 'package:quiz_app_ii_example/model/ba/option.dart';
import 'package:quiz_app_ii_example/model/ba/question.dart';

import '../../model/ba/option.dart';
import '../../model/ba/question.dart';

final questionsenglish = [
  QuestionBa(
    text: 'Which famous children’s story was banned by the Chinese government?',
    options: [
      OptionBa(code: 'A', text: 'Beauty and the beast', isCorrect: false),
      OptionBa(code: 'B', text: 'Snow white and seven dwarfs', isCorrect: false),
      OptionBa(code: 'C', text: 'Alice in Wonderland', isCorrect: true),
      OptionBa(code: 'D', text: 'Puss in boots', isCorrect: false),
    ],
    solution: 'famous children’s story was banned ',
  ),
  QuestionBa(
    text: 'In which of these Shakespearean plays does ghost appear?',
    options: [
      OptionBa(code: 'A', text: 'Hamlet', isCorrect: true),
      OptionBa(code: 'B', text: 'King Lear', isCorrect: false),
      OptionBa(code: 'C', text: 'Othello ', isCorrect: false),
      OptionBa(code: 'D', text: 'Henry V', isCorrect: false),
    ],
    solution: '___',
  ),
  QuestionBa(
    text: 'The writers of which country have won the Nobel prize in literature most number of times?',
    options: [
      OptionBa(code: 'A', text: 'Canada', isCorrect: false),
      OptionBa(code: 'B', text: 'France', isCorrect: true),
      OptionBa(code: 'C', text: 'Australia', isCorrect: false),
      OptionBa(code: 'D', text: 'British Isles', isCorrect: false),
    ],
    solution: '___',
  ),
  QuestionBa(
    text: '4)	Somerset Maugham came all the way to India to meet a particular writer but had to go back without meeting him because none of the localites in the town knew him. Who was this writer?',
    options: [
      OptionBa(code: 'A', text: 'Ruskin bond', isCorrect: false),
      OptionBa(code: 'B', text: 'Kushwant Singh', isCorrect: false),
      OptionBa(code: 'C', text: "R K Narayan", isCorrect: true),
      OptionBa(code: 'D', text: "Raja Rao", isCorrect: false),
    ],
    solution: '___',
  ),
  QuestionBa(
    text: '5)	What is the name of Shakespeare’s wife?',
    options: [
      OptionBa(code: 'A', text: 'Catherine', isCorrect: false),
      OptionBa(code: 'B', text: 'Annie', isCorrect: false),
      OptionBa(code: 'C', text: 'Daisy', isCorrect: false),
      OptionBa(code: 'D', text: 'Anne Hathaway', isCorrect: true),
    ],
    solution: '___',
  ),
];