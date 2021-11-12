import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app_ii_example/Screens/Login/login_screen.dart';
import 'package:quiz_app_ii_example/Screens/Signup/components/social_icon.dart';
import 'package:quiz_app_ii_example/components/already_have_an_account_acheck.dart';
import 'package:quiz_app_ii_example/components/rounded_button.dart';
import 'package:quiz_app_ii_example/components/rounded_input_field.dart';
import 'package:quiz_app_ii_example/components/rounded_password_field.dart';
import 'package:quiz_app_ii_example/page/ba/homeBa.dart';
import 'package:quiz_app_ii_example/page/bca/homeBca.dart';
// import 'package:quiz_app_ii_example/page/bca/home_page.dart';
// import 'package:quiz_app_ii_example/database/localdb.dart';
// import 'package:quiz_app_ii_example/database/constant.dart';

import 'background.dart';
import 'or_divider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _emailAddress = '';
  String _password = '';
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _submitForm() async {
    final isValid = _formKey.currentState.validate();

    if (isValid) {
      _formKey.currentState.save();
      try {
        await _auth.createUserWithEmailAndPassword(
            email: _emailAddress.toLowerCase().trim(),
            password: _password.trim());
        final User user = _auth.currentUser;
        final uid = user.uid;
        await FirebaseFirestore.instance.collection("users").doc(uid).set({
          "id": uid,
          "email": _emailAddress,
        });
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePageBca()),
            (route) => false);
      } catch (error) {
        print('error occurred ${error.message}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  RoundedInputField(
                    hintText: "Your Email",
                    onSaved: (value) {
                      _emailAddress = value;
                    },
                  ),
                  RoundedPasswordField(
                    onSaved: (value) {
                      _password = value;
                    },
                  ),
                  RoundedButton(
                    text: "SIGNUP",
                    press: _submitForm,
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
