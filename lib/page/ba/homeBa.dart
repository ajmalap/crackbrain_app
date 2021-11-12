import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_ii_example/data/ba/categoriesBa.dart';
import 'package:quiz_app_ii_example/widget/ba/category_header_widget.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class HomePageBa extends StatelessWidget {
  @override
  FirebaseAuth _auth = FirebaseAuth.instance;
  Widget build(BuildContext context) => Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(175),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)) ,
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/ba.jpg"),
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
      children: categoriesBa
          .map((category) => CategoryHeaderWidgetBa(category: category))
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
      InkWell(
        onTap: () => launch('https://www.studocu.com/in/document/university-of-delhi/english-literature-3ii/additional-english-lecture-notes-first-year/15099668'),
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
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKk7MeVOGwipi4EBgL0-7xAmJnV_6n9jMB6m2WQJCcJgnQBAxG8Mhu2lx8ucLXn8SXzk8&usqp=CAU",
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
        onTap: () => launch('https://www.sparknotes.com/psychology/psych101/researchmethods/quiz/'),
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
                  "https://live.staticflickr.com/8022/6961733054_8768a337f8_b.jpg",
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
        onTap: () => launch('https://www.americanpressinstitute.org/journalism-essentials/what-is-journalism/'),
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
                  "https://cmb.ac.lk/wp-content/uploads/dip-featured.png",
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
