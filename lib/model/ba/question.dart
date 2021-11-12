import 'package:flutter/cupertino.dart';

import 'option.dart';

class QuestionBa {
  final String text;
  final List<OptionBa> options;
  final String solution;
  bool isLocked;
  OptionBa selectedOption;

  QuestionBa({
    @required this.text,
    @required this.options,
    @required this.solution,
    this.isLocked = false,
    this.selectedOption,
  });
}
