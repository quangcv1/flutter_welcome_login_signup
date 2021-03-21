import 'package:flutter/material.dart';
import 'package:welcome_login_signup/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String hintText;
  final ValueChanged onChange;

  const RoundedPasswordField({
    Key key,
    this.color,
    this.icon,
    this.hintText,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          border: InputBorder.none,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
