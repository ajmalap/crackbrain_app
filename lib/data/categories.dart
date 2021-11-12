import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app_ii_example/data/python.dart';
import 'package:quiz_app_ii_example/data/questions.dart';
import 'package:quiz_app_ii_example/model/category.dart';

import 'C.dart';
import 'HTML.dart';

final categories = <Category>[
  Category(
    questions: questions,
    categoryName: 'C++',
    imageUrl: 'assets/c++.jpg',
    backgroundColor: Colors.lightGreen,
    icon: FontAwesomeIcons.plus,
    description: 'Practice questions from various chapters in C++',
  ),
  Category(
    questions: questionsHTML,
    imageUrl: 'assets/html.jpg',
    categoryName: 'HTML',
    backgroundColor: Colors.red,
    icon: FontAwesomeIcons.code,
    description: 'Practice questions from various chapters in HTML',
  ),
  Category(
    questions: questionspython,
    imageUrl: 'assets/maths.png',
    categoryName: 'PYTHON',
    backgroundColor: Colors.purple,
    icon: FontAwesomeIcons.python,
    description: 'Practice questions from various chapters in PYTHON',
  ),
  Category(
    questions: questionsC,
    imageUrl: 'assets/c.jpg',
    categoryName: 'C',
    backgroundColor: Colors.deepOrangeAccent,
    icon: FontAwesomeIcons.cuttlefish,
    description: 'Practice questions from various chapters in C',
  ),
];
