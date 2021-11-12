import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app_ii_example/data/bba/Financial%20management.dart';
import 'package:quiz_app_ii_example/data/bba/Investment%20banking.dart';
import 'package:quiz_app_ii_example/model/bba/category.dart';

import 'Financial accounting.dart';


final categoriesBba = <CategoryBba>[
  CategoryBba(
    questions: questionsBba1,
    categoryName: 'FINANCIAL ACCOUNTING',
    imageUrl: 'assets/c++.jpg',
    backgroundColor: Color(0xff2473e9),
    icon: FontAwesomeIcons.calculator,
    description: 'Practice questions from various chapters in C++',
  ),
  CategoryBba(
    questions: questionsBba3,
    imageUrl: 'assets/maths.png',
    categoryName: 'FINANCIAL MANAGEMENT',
    backgroundColor: Color(0xff2473e9),
    icon: FontAwesomeIcons.chartBar,
    description: 'Practice questions from various chapters in PYTHON',
  ),
  CategoryBba(
    questions: questionsBba4,
    imageUrl: 'assets/c.jpg',
    categoryName: 'INVESTMENT BANKING',
    backgroundColor: Color(0xff2473e9),
    icon: FontAwesomeIcons.wallet,
    description: 'Practice questions from various chapters in C',
  ),
];

