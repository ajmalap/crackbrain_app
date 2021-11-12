import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class OptionBa {
  final String code;
  final String text;
  final bool isCorrect;

  const OptionBa({
    @required this.text,
    @required this.code,
    @required this.isCorrect,
  });
}
