import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_ii_example/Screens/Login/login_screen.dart';
import 'package:quiz_app_ii_example/data/bca/categories.dart';
import 'package:quiz_app_ii_example/page/ba/homeBa.dart';
import 'package:quiz_app_ii_example/page/bba/homeBba.dart';
import 'package:quiz_app_ii_example/page/bcom/homeBcom.dart';
import 'package:quiz_app_ii_example/widget/bca/category_header_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageBca extends StatelessWidget {
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
        image: AssetImage("assets/bca.jpg"),
        fit: BoxFit.fill
        ),
        ),
        ),
        ),
        // title: Text(
        // "CrackBrain",
        // style: TextStyle(
        // color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
        // ),
          backgroundColor: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
          ),
        ),
        ),
        drawer:
            //  NavigationDrawerWidget(),

            Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
              // image: DecorationImage(
              // image: AssetImage("assets/bca.jpg"),
              // ),

                  color: Color(0xFF6457ff),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: new CircleAvatar(
                      radius: 30.0,
                      backgroundColor: const Color(0xFF6457ff),
                      backgroundImage:
                          AssetImage("assets/profile.png"),
                    // for Network image
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "USER",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "WELCOME TO CRACKBRAIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ]),
              ),
              ListTile(
                // tileColor: Colors.red,
                title: const Text('BCA'),
                leading: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePageBca()));
                },
              ),
              ListTile(
                title: const Text('BCOM'),
                leading: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePageBcom()));
                },
              ),
              ListTile(
                title: const Text('BBA'),
                leading: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePageBba()));
                },
              ),
              ListTile(
                title: const Text('BA'),
                leading: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePageBa()));
                },
              ),
              
              ListTile(
                leading: Icon(Icons.logout_outlined),
                title: const Text('LOG OUT'),
                onTap: () {
                  _auth.signOut();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ],
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
            // TextButton(
            //   style: TextButton.styleFrom(
            //     primary: Colors.deepPurple, // foreground
            //   ),
            //   onPressed: () {
            //     _auth.signOut();
            //     Navigator.pushReplacement(context,
            //         MaterialPageRoute(builder: (context) => LoginScreen()));
            //   },
            //   child: Text('Logout'),
            // )
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
          children: categoriesBca
              .map((category) => CategoryHeaderWidgetbca(category: category))
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
          // SizedBox(height: 16),
          Container(
            height: 30,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
          ),
          InkWell(
            onTap: () => launch('https://www.javatpoint.com/cpp-tutorial'),
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
                      "https://engineering.fb.com/wp-content/uploads/2015/06/1522635669452_11.jpg",
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
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
                'https://www.learnpython.org/'),
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
                      "https://images.unsplash.com/photo-1526379095098-d400fd0bf935?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80",
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
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
            onTap: () => launch('https://www.w3schools.com/html'),
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
                      "https://anastasionico.uk/img/blog/html-elements.jpg",
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
            onTap: () => launch('https://www.javatpoint.com/c-programming-language-tutorial'),
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
                      "https://sp-ao.shortpixel.ai/client/q_glossy,ret_img,w_1024/https://online.crbtech.in/wp-content/uploads/2019/03/C-programming-1024x530.png",
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
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
        ],
      );
}
