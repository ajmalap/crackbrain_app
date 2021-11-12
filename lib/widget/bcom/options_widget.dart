import 'package:flutter/material.dart';
import 'package:quiz_app_ii_example/model/bcom/option.dart';
import 'package:quiz_app_ii_example/model/bcom/question.dart';
// import 'package:quiz_app_ii_example/model/option.dart';
// import 'package:quiz_app_ii_example/model/question.dart';
import 'package:quiz_app_ii_example/utils.dart';

class OptionsWidgetBcom extends StatelessWidget {
  final QuestionBcom question;
  final ValueChanged<OptionBcom> onClickedOption;

  const OptionsWidgetBcom({
    Key key,
    @required this.question,
    @required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        children: Utils.heightBetween(
          question.options
              .map((option) => buildOption(context, option))
              .toList(),
          height: 8,
        ),
      );

  Widget buildOption(BuildContext context, OptionBcom option) {
    final color = getColorForOption(option, question);

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            buildAnswer(option),
            buildSolution(question.selectedOption, option),
          ],
        ),
      ),
    );
  }

  Widget buildAnswer(OptionBcom option) => Container(
        height: 50,
        child: Row(children: [
          Text(
            option.code,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(width: 12),
          Text(
            option.text,
            style: TextStyle(fontSize: 20),
          )
        ]),
      );

  Widget buildSolution(OptionBcom solution, OptionBcom answer) {
    if (solution == answer) {
      return Text(
        question.solution,
        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      );
    } else {
      return Container();
    }
  }

  Color getColorForOption(OptionBcom option, QuestionBcom question) {
    final isSelected = option == question.selectedOption;

    if (!isSelected) {
      return Colors.grey.shade200;
    } else {
      return option.isCorrect ? Colors.green : Colors.red;
    }
  }
}
