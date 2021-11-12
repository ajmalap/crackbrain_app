import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'question.dart';

class CategoryBca {
  final String categoryName;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final List<QuestionBca> questions;
  final String imageUrl;

  CategoryBca({
    @required this.imageUrl,
    @required this.questions,
    @required this.categoryName,
    this.description = '',
    this.backgroundColor = Colors.orange,
    this.icon = FontAwesomeIcons.question,
  });
}
