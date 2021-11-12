import 'package:flutter/material.dart';
import 'package:quiz_app_ii_example/model/ba/category.dart';
import 'package:quiz_app_ii_example/model/ba/question.dart';
import 'package:quiz_app_ii_example/model/ba/category.dart';
import 'package:quiz_app_ii_example/model/ba/option.dart';
import 'package:quiz_app_ii_example/model/ba/question.dart';
import 'package:quiz_app_ii_example/model/ba/category.dart';
import 'package:quiz_app_ii_example/model/ba/option.dart';
import 'package:quiz_app_ii_example/model/ba/question.dart';
import 'package:quiz_app_ii_example/widget/ba/options_widget.dart';

class QuestionsWidgetBa extends StatelessWidget {
  final CategoryBa category;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<OptionBa> onClickedOption;

  const QuestionsWidgetBa({
    Key key,
    @required this.category,
    @required this.controller,
    @required this.onChangedPage,
    @required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        onPageChanged: onChangedPage,
        controller: controller,
        itemCount: category.questions.length,
        itemBuilder: (context, index) {
          final question = category.questions[index];

          return buildQuestion(question: question);
        },
      );

  Widget buildQuestion({
    @required QuestionBa question,
  }) =>
      Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              question.text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 8),
            Text(
              'Choose your answer from below',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
            ),
            SizedBox(height: 32),
            Expanded(
              child: OptionsWidgetBa(
                question: question,
                onClickedOption: onClickedOption,
              ),
            ),
          ],
        ),
      );
}
