import 'package:flutter/cupertino.dart';

import 'option.dart';

class QuestionBca {
  final String text;
  final List<OptionBca> options;
  final String solution;
  bool isLocked;
  OptionBca selectedOption;

  QuestionBca({
    @required this.text,
    @required this.options,
    @required this.solution,
    this.isLocked = false,
    this.selectedOption,
  });
}
