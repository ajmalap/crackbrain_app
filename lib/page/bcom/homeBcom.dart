import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_ii_example/data/bcom/categoriesBcom.dart';
import 'package:quiz_app_ii_example/widget/bcom/category_header_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageBcom extends StatelessWidget {
  @override
  FirebaseAuth _auth = FirebaseAuth.instance;
  Widget build(BuildContext context) => Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(175),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)) ,
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bcom.jpg"),
                        fit: BoxFit.fill
                    )
                )
            ),
          ),
          // title: Text(
          //   "CrackBrain",
          //   style: TextStyle(
          //       color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
          // ),
          backgroundColor: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
          ),
        ),
      ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(height: 8),
            buildCategories(),
            SizedBox(height: 32),
            buildPopular(context),
          ],
        ),
      );

  Widget buildWelcome(String username) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            username,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      );

  Widget buildCategories() => Container(
        height: 300,
        child: GridView(
          primary: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: categoriesBcom
              .map((category) => CategoryHeaderWidgetBcom(category: category))
              .toList(),
        ),
      );

  Widget buildPopular(BuildContext context) => Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'ONLINE COURSE',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 30,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
          ),
          InkWell(
            onTap: () => launch('https://www.vskills.in/interview-questions/gst-interview-questions'),
            child: Card(
              color: Color(0xff9e579d),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4.0,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2020/12/13/135617-gst.jpg?itok=K_uWA59k&c=c5af8c0f92ccc8e249257bf0f1cb18e8",
                      fit: BoxFit.fitHeight,
                      width: double.infinity,
                      height: 230,
                    ),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 15, 10, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      )),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => launch(
                'https://engineeringinterviewquestions.com/business-management-multiple-choice-questions-answers/'),
            child: Card(
              color: Color(0xff9e579d),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4.0,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://study.com/cimages/course-image/business-management-help-review_141072_large.jpg",
                      fit: BoxFit.fitHeight,
                      width: double.infinity,
                      height: 230,
                    ),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 15, 10, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      )),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => launch('https://www.toppr.com/guides/fundamentals-of-accounting/fundamentals-of-cost-accounting/importance-of-cost-accounting/'),
            child: Card(
              color: Color(0xff9e579d),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4.0,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://www.apnacourse.com/apnadata/module_images/85/costacc.png",
                      fit: BoxFit.fitHeight,
                      width: double.infinity,
                      height: 230,
                    ),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 15, 10, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      )),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => launch('https://www.slideshare.net/SUNITHANANJUNDAPPA/e-business-and-accounting-slide-share'),
            child: Card(
              color: Color(0xff9e579d),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4.0,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://cdn.slidesharecdn.com/ss_thumbnails/ebaslideshare-180209055140-thumbnail-4.jpg?cb=1518155589",
                      fit: BoxFit.fitHeight,
                      width: double.infinity,
                      height: 230,
                    ),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 15, 10, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
