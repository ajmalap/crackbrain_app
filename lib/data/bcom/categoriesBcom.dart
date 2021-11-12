import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app_ii_example/data/bcom/bm.dart';
import 'package:quiz_app_ii_example/data/bcom/ebusiness.dart';
import 'package:quiz_app_ii_example/model/bcom/category.dart';
import 'gst.dart';
import 'cost accounting.dart';

final categoriesBcom = <CategoryBcom>[
  CategoryBcom(
    questions: questionsBcom1,
    categoryName: 'GST',
    imageUrl: 'assets/c++.jpg',
    backgroundColor: Color(0xff9e57ff),
    icon: FontAwesomeIcons.instalod,
    description: 'Practice questions from various chapters in C++',
  ),
  CategoryBcom(
    questions: questionsBcom2,
    imageUrl: 'assets/html.jpg',
    categoryName: 'COST ACCOUNTING',
    backgroundColor: Color(0xff9e57ff),
    icon: FontAwesomeIcons.instalod,
    description: 'Practice questions from various chapters in HTML',
  ),
  CategoryBcom(
    questions: questionsBcom3,
    imageUrl: 'assets/maths.png',
    categoryName: 'BUSINESS MANAGEMENT',
    backgroundColor: Color(0xff9e57ff),
    icon: FontAwesomeIcons.instalod,
    description: 'Practice questions from various chapters in PYTHON',
  ),
  CategoryBcom(
    questions: questionsBcom4,
    imageUrl: 'assets/c.jpg',
    categoryName: 'E BUSINESS AND ACCOUNTING',
    backgroundColor: Color(0xff9e57ff),
    icon: FontAwesomeIcons.instalod,
    description: 'Practice questions from various chapters in C',
  ),
];
