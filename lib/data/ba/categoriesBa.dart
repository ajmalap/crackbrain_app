
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app_ii_example/data/ba/sub3.dart';
import 'package:quiz_app_ii_example/model/ba/category.dart';
import 'package:quiz_app_ii_example/data/ba/sub1.dart';
import 'package:quiz_app_ii_example/data/ba/sub2.dart';
import '../../constants.dart';
import 'sub1.dart';
import 'sub2.dart';

final categoriesBa = <CategoryBa>[
  CategoryBa(
    questions: questionsenglish,
    categoryName: 'OPTIONAL ENGLISH',
    imageUrl: 'assets/c++.jpg',
    backgroundColor: Color(0xfffb7c73),
    icon: FontAwesomeIcons.empire,
    description: 'Practice questions from various chapters in C++',
  ),
  CategoryBa(
    questions: questionsBa2,
    imageUrl: 'assets/html.jpg',
    categoryName: 'PSYCHOLOGY',
    backgroundColor: Color(0xfffb7c73),
    icon: FontAwesomeIcons.empire,
    description: 'Practice questions from various chapters in HTML',
  ),
  CategoryBa(
    questions: questionsBa3,
    imageUrl: 'assets/maths.png',
    categoryName: 'JOURNALISM',
    backgroundColor: Color(0xfffb7c73),
    icon: FontAwesomeIcons.empire,
    description: 'Practice questions from various chapters in PYTHON',
  ),
];
