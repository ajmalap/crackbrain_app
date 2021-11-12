import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class OptionBba {
  final String code;
  final String text;
  final bool isCorrect;

  const OptionBba({
    @required this.text,
    @required this.code,
    @required this.isCorrect,
  });
}
