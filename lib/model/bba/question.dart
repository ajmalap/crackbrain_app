import 'package:flutter/cupertino.dart';

import 'option.dart';

class QuestionBba {
  final String text;
  final List<OptionBba> options;
  final String solution;
  bool isLocked;
  OptionBba selectedOption;

  QuestionBba({
    @required this.text,
    @required this.options,
    @required this.solution,
    this.isLocked = false,
    this.selectedOption,
  });
}
