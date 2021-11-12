import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class OptionBca {
  final String code;
  final String text;
  final bool isCorrect;

  const OptionBca({
    @required this.text,
    @required this.code,
    @required this.isCorrect,
  });
}
