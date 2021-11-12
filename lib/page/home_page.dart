// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:quiz_app_ii_example/Screens/Login/login_screen.dart';
// import 'package:quiz_app_ii_example/data/bca/categories.dart';
// import 'package:quiz_app_ii_example/data/bcom/categoriesBcom.dart';
// import 'package:quiz_app_ii_example/data/user.dart';
// import 'package:quiz_app_ii_example/page/category_page.dart';
// import 'package:quiz_app_ii_example/page/bca/homeBca.dart';
// import 'package:quiz_app_ii_example/page/bcom/homeBcom.dart';
// import 'package:quiz_app_ii_example/widget/bcom/category_detail_widget.dart';
// import 'package:quiz_app_ii_example/widget/category_detail_widget.dart';
// import 'package:quiz_app_ii_example/widget/category_header_widget.dart';
//
// class HomePage extends StatelessWidget {
//   @override
//   FirebaseAuth _auth = FirebaseAuth.instance;
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           // leading: Icon(Icons.menu),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: Text('CrackBrain'),
//           bottom: PreferredSize(
//             preferredSize: Size.fromHeight(80),
//             child: Container(
//               padding: EdgeInsets.all(16),
//               alignment: Alignment.centerLeft,
//               child: buildWelcome(username),
//             ),
//           ),
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.deepPurple, Colors.purple[600]],
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//               ),
//             ),
//           ),
//
//           // actions: [
//           //   Icon(Icons.search),
//           //   SizedBox(width: 12),
//           // ],
//         ),
//         drawer:
//             //  NavigationDrawerWidget(),
//
//             Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Color(0xff574b90),
//                 ),
//                 child: Container(
//                   // padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
//                   child: Text(
//                     " CRACKBRAIN",
//                     style: TextStyle(
//                       // fontSize: 34,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               // SizedBox(
//               //   height: 30,
//               // ),
//
//               ListTile(
//                 title: const Text('BCA'),
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => HomePageBca()));
//                 },
//               ),
//               ListTile(
//                 title: const Text('BCOM'),
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => HomePageBcom()));
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.logout_outlined),
//                 title: const Text('LOG OUT'),
//                 onTap: () {
//                   _auth.signOut();
//                   Navigator.pushReplacement(context,
//                       MaterialPageRoute(builder: (context) => LoginScreen()));
//                 },
//               ),
//             ],
//           ),
//         ),
//         body: ListView(
//           physics: BouncingScrollPhysics(),
//           padding: const EdgeInsets.all(16),
//           children: [
//             SizedBox(height: 8),
//             buildCategories(),
//             SizedBox(height: 32),
//             buildPopular(context),
//             TextButton(
//               style: TextButton.styleFrom(
//                 primary: Colors.deepPurple, // foreground
//               ),
//               onPressed: () {
//                 _auth.signOut();
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) => LoginScreen()));
//               },
//               child: Text('Logout'),
//             )
//           ],
//         ),
//       );
//
//   Widget buildWelcome(String username) => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Hello',
//             style: TextStyle(fontSize: 16, color: Colors.white),
//           ),
//           Text(
//             username,
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           )
//         ],
//       );
//
//   Widget buildCategories() => Container(
//         height: 300,
//         child: GridView(
//           primary: false,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 4 / 3,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           children: categoriesBca
//               .map((category) => CategoryHeaderWidget(category: category))
//               .toList(),
//         ),
//       );
//
//   Widget buildPopular(BuildContext context) => Column(
//         children: [
//           Container(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               'Popular',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(height: 16),
//           Container(
//             height: 240,
//             child: ListView(
//               physics: BouncingScrollPhysics(),
//               scrollDirection: Axis.horizontal,
//               children: categoriesBca
//                   .map((category) => CategoryDetailWidget(
//                         category: category,
//                         onSelectedCategory: (category) {
//                           Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) =>
//                                 CategoryPage(category: category),
//                           ));
//                         },
//                       ))
//                   .toList(),
//             ),
//           )
//         ],
//       );
// }
