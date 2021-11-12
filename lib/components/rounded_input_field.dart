import 'package:flutter/material.dart';
import 'package:quiz_app_ii_example/components/text_field_container.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onSaved;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        key: ValueKey('email'),
        validator: (value) {
          if (value.isEmpty || !value.contains('@')) {
            return 'Please enter a valid email address';
          }
          return null;
        },
        onSaved: onSaved,
        keyboardType: TextInputType.emailAddress,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
