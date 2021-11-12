import 'package:flutter/material.dart';
import 'package:quiz_app_ii_example/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onSaved;
  const RoundedPasswordField({
    Key key,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        key: ValueKey('Password'),
        validator: (value) {
          if (value.isEmpty || value.length < 7) {
            return 'Please enter at least 6 char ';
          }
          return null;
        },
        obscureText: true,
        onSaved: onSaved,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
