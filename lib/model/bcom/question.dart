import 'package:flutter/cupertino.dart';

import 'option.dart';

class QuestionBcom {
  final String text;
  final List<OptionBcom> options;
  final String solution;
  bool isLocked;
  OptionBcom selectedOption;

  QuestionBcom({
    @required this.text,
    @required this.options,
    @required this.solution,
    this.isLocked = false,
    this.selectedOption,
  });
}
