import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app_ii_example/model/bcom/category.dart';
import 'package:quiz_app_ii_example/page/bcom/categoryBcom.dart';
// import 'package:quiz_app_ii_example/model/category.dart';
import 'package:quiz_app_ii_example/page/category_page.dart';

class CategoryHeaderWidgetBcom extends StatelessWidget {
  final CategoryBcom category;

  const CategoryHeaderWidgetBcom({
    Key key,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          print(category.categoryName);
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CategoryPage(category: category),
          ));
        },
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: category.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(category.icon, color: Colors.white, size: 36),
              const SizedBox(height: 12),
              Text(
                category.categoryName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      );
}
