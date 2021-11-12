import 'package:flutter/material.dart';
import 'package:quiz_app_ii_example/model/bca/category.dart';
import 'package:quiz_app_ii_example/model/bca/option.dart';
import 'package:quiz_app_ii_example/model/bca/question.dart';
import 'package:quiz_app_ii_example/model/bca/category.dart';
import 'package:quiz_app_ii_example/model/bca/option.dart';
import 'package:quiz_app_ii_example/model/bca/question.dart';
import 'package:quiz_app_ii_example/widget/bca/options_widget.dart';
import 'package:quiz_app_ii_example/widget/bca/options_widget.dart';

class QuestionsWidgetbca extends StatelessWidget {
  final CategoryBca category;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<OptionBca> onClickedOption;

  const QuestionsWidgetbca({
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
    @required QuestionBca question,
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
              child: OptionsWidgetBca(
                question: question,
                onClickedOption: onClickedOption,
              ),
            ),
          ],
        ),
      );
}
