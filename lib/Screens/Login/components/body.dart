import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app_ii_example/Screens/Signup/signup_screen.dart';
import 'package:quiz_app_ii_example/components/already_have_an_account_acheck.dart';
import 'package:quiz_app_ii_example/components/rounded_button.dart';
import 'package:quiz_app_ii_example/components/rounded_input_field.dart';
import 'package:quiz_app_ii_example/components/rounded_password_field.dart';
import 'package:quiz_app_ii_example/page/bca/homeBca.dart';
import 'package:quiz_app_ii_example/page/home_page.dart';
import 'background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _email = "";

  String _password = "";

  final _formKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _submitForm() async {
    final isValid = _formKey.currentState.validate();
    if (isValid) {
      _formKey.currentState.save();
      try {
        await _auth
            .signInWithEmailAndPassword(
                email: _email.toLowerCase().trim(), password: _password.trim())
            .then((value) => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePageBca()),
                (route) => false));
      } catch (error) {
        ScaffoldMessenger.of(context)
            .showSnackBar(showSnackBar(error.toString()));
        print('error occurred ${error.message}');
      }
    }
  }

  Widget showSnackBar(String msg) {
    return SnackBar(
      content: Text(msg),
    );
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
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  RoundedInputField(
                    hintText: "Your Email",
                    onSaved: (value) {
                      _email = value;
                    },
                  ),
                  RoundedPasswordField(
                    onSaved: (value) {
                      _password = value;
                    },
                  ),
                  RoundedButton(
                    text: "LOGIN",
                    press: _submitForm,
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
