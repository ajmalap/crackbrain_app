import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app_ii_example/data/bca/python.dart';
import 'package:quiz_app_ii_example/data/bca/questions.dart';
import 'package:quiz_app_ii_example/model/bca/category.dart';
// import 'package:quiz_app_ii_example/model/category.dart';

import 'C.dart';
import 'HTML.dart';

final categoriesBca = <CategoryBca>[
  CategoryBca(
    questions: questions,
    categoryName: 'C++',
    imageUrl: 'assets/c++.jpg',
    backgroundColor: Color(0xFF6457ff),
    icon: FontAwesomeIcons.plus,
    description: 'Practice questions from various chapters in C++',
  ),
  CategoryBca(
    questions: questionsHTML,
    imageUrl: 'assets/html.jpg',
    categoryName: 'HTML',
    backgroundColor: Color(0xFF6457ff),
    icon: FontAwesomeIcons.code,
    description: 'Practice questions from various chapters in HTML',
  ),
  CategoryBca(
    questions: questionspython,
    imageUrl: 'assets/maths.png',
    categoryName: 'PYTHON',
    backgroundColor: Color(0xFF6457ff),
    icon: FontAwesomeIcons.python,
    description: 'Practice questions from various chapters in PYTHON',
  ),
  CategoryBca(
    questions: questionsC,
    imageUrl: 'assets/c.jpg',
    categoryName: 'C',
    backgroundColor: Color(0xFF6457ff),
    icon: FontAwesomeIcons.cuttlefish,
    description: 'Practice questions from various chapters in C',
  ),
];
