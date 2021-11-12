import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class OptionBcom {
  final String code;
  final String text;
  final bool isCorrect;

  const OptionBcom({
    @required this.text,
    @required this.code,
    @required this.isCorrect,
  });
}
