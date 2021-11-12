import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_ii_example/data/bba/categoriesBba.dart';
import 'package:quiz_app_ii_example/widget/bba/category_header_widget.dart';
import 'package:url_launcher/url_launcher.dart';


// ignore: must_be_immutable
class HomePageBba extends StatelessWidget {
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
                        image: AssetImage("assets/bba.jpg"),
                        fit: BoxFit.fill
                    ),
                ),
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
          children: categoriesBba
              .map((category) => CategoryHeaderWidgetBba(category: category))
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
            onTap: () => launch('https://www.basic-concept.com/c/basics-of-financial-accounting'),
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
                      "https://www.basic-concept.com/public/images/uploads/financial-accounting.jpg",
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
            onTap: () => launch('https://www.netsuite.com/portal/resource/articles/financial-management/financial-management.shtml'),
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
                      "https://www.techfunnel.com/wp-content/uploads/2018/05/Importance-of-Modern-Financial-Management-Systems.jpg",
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
            onTap: () => launch('https://www.investopedia.com/terms/i/investment-banking.asp#:~:text=Investment%20banking%20is%20a%20specific,%2C%20governments%2C%20and%20other%20entities.'),
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
                      "https://i.ytimg.com/vi/eVu99Mr45H8/maxresdefault.jpg",
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
