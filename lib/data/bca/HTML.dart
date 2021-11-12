import 'package:quiz_app_ii_example/model/bca/option.dart';

import '../../model/bca/option.dart';
import '../../model/bca/question.dart';

final questionsHTML = [
  QuestionBca(
    text: 'HTML stands for -',
    options: [
      OptionBca(code: 'A', text: 'HighText Machine Language', isCorrect: false),
      OptionBca(
          code: 'B', text: 'HyperText links Markup Language', isCorrect: false),
      OptionBca(code: 'C', text: 'HyperText Markup Language', isCorrect: true),
      OptionBca(code: 'D', text: 'None of these', isCorrect: false),
    ],
    solution:
        'HTML is an acronym that stands for HyperText Markup Language, which is used for creating web pages and web applications',
  ),
  QuestionBca(
    text: 'The correct sequence of HTML tags for starting a webpage is -',
    options: [
      OptionBca(code: 'A', text: 'Head, Title, HTML, body', isCorrect: false),
      OptionBca(code: 'B', text: 'HTML, Body, Title, Head', isCorrect: false),
      OptionBca(code: 'C', text: 'HTML, Head, Title, Body', isCorrect: true),
      OptionBca(code: 'D', text: 'HTML, Title, Head, Body', isCorrect: false),
    ],
    solution:
        'The correct sequence of HTML tags to start a webpage is html, head, title, and body.',
  ),
  QuestionBca(
    text:
        'Which of the following tag is used for inserting the largest heading in HTML?',
    options: [
      OptionBca(code: 'A', text: '<h4>', isCorrect: false),
      OptionBca(code: 'B', text: '<h3>', isCorrect: false),
      OptionBca(code: 'C', text: '<h2>', isCorrect: false),
      OptionBca(code: 'D', text: '<h1>', isCorrect: true),
    ],
    solution:
        ' The <h1> tag is used to insert the main heading or the highest level heading',
  ),
  QuestionBca(
    text: 'Which character is used to represent the closing of a tag in HTML?',
    options: [
      OptionBca(code: 'A', text: '|', isCorrect: false),
      OptionBca(code: 'B', text: '!', isCorrect: false),
      OptionBca(code: 'C', text: "/", isCorrect: true),
      OptionBca(code: 'D', text: "-", isCorrect: false),
    ],
    solution:
        'The forward-slash (/) character is used to indicate the closing of a tag in HTML',
  ),
  QuestionBca(
    text: 'How to insert an image in HTML?',
    options: [
      OptionBca(code: 'A', text: ' <img href = "jtp.png" />', isCorrect: false),
      OptionBca(code: 'B', text: ' <img url = "jtp.png" />', isCorrect: false),
      OptionBca(code: 'C', text: ' <img link = "jtp.png" />', isCorrect: false),
      OptionBca(code: 'D', text: ' <img src = "jtp.png" />', isCorrect: true),
    ],
    solution:
        'The img tag and the src attribute is used to display an image on the webpage',
  ),
  QuestionBca(
    text: ' Which of the following tag is used to add rows in the table?',
    options: [
      OptionBca(code: 'A', text: '<td> and </td>', isCorrect: false),
      OptionBca(code: 'B', text: '<th> and </th>', isCorrect: false),
      OptionBca(code: 'C', text: '<tr> and </tr>', isCorrect: true),
      OptionBca(
        code: 'D',
        text: 'None of the above',
        isCorrect: false,
      ),
    ],
    solution: 'The <tr> tag in HTML is used to define the rows in the table.',
  ),
  QuestionBca(
    text: 'A program in HTML can be rendered and read by -',
    options: [
      OptionBca(code: 'A', text: 'Web browser', isCorrect: true),
      OptionBca(code: 'B', text: 'Server', isCorrect: false),
      OptionBca(code: 'C', text: 'Interpreter', isCorrect: false),
      OptionBca(code: 'D', text: 'None of the above', isCorrect: false),
    ],
    solution:
        'HTML programs can be read and rendered by the web browser. A web browser can support several web pages',
  ),
  QuestionBca(
      text: 'A Which is the correct way to comment out something in HTML?',
      options: [
        OptionBca(code: 'A', text: 'Using ## and #', isCorrect: false),
        OptionBca(code: 'B', text: 'Using <!-- and -->', isCorrect: true),
        OptionBca(code: 'C', text: 'Using </-- and -/->', isCorrect: false),
        OptionBca(code: 'D', text: 'Using <!-- and -!>', isCorrect: false),
      ],
      solution: 'Comments are used for user understanding of the programmer'),
  QuestionBca(
      text:
          'Which of the following HTML tag is used to display the text with scrolling effect?',
      options: [
        OptionBca(code: 'A', text: '<marquee>', isCorrect: true),
        OptionBca(code: 'B', text: '<scroll>', isCorrect: false),
        OptionBca(code: 'C', text: '<div>', isCorrect: false),
        OptionBca(code: 'D', text: 'None of the above', isCorrect: false),
      ],
      solution:
          'The <marquee> tag is a non-standard HTML element that is used to scroll a text or image either horizontally or vertically'),
  QuestionBca(
      text: 'Which of the following is the root tag of the HTML document?',
      options: [
        OptionBca(code: 'A', text: '<body>', isCorrect: false),
        OptionBca(code: 'B', text: '<head>', isCorrect: false),
        OptionBca(code: 'C', text: '<title>', isCorrect: false),
        OptionBca(code: 'D', text: '<html>', isCorrect: true),
      ],
      solution:
          'The <html> tag represents the root of an HTML document, hence also called as the root element. It is a container of all elements'),
];
