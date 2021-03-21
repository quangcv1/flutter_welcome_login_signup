import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'file:///D:/FLUTTER/welcome_login_signup/lib/Screens/Signup/Components/or_divider.dart';
import 'package:welcome_login_signup/Screens/Login/login_screen.dart';
import 'package:welcome_login_signup/Screens/Signup/Components/background.dart';
import 'package:welcome_login_signup/Screens/Signup/Components/social_icon.dart';
import 'package:welcome_login_signup/components/already_have_an_account_check.dart';
import 'package:welcome_login_signup/components/rounded_button.dart';
import 'package:welcome_login_signup/components/rounded_input_field.dart';
import 'package:welcome_login_signup/components/rounded_password_field.dart';
import 'package:welcome_login_signup/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGN UP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Password",
              color: kPrimaryColor,
              icon: Icons.lock,
              onChange: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              textColor: Colors.white,
              color: kPrimaryColor,
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
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
