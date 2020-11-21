import 'package:flutter/material.dart';
import 'package:book_app/Screens/Login/login_screen.dart';
import 'package:book_app/Screens/Signup/signup_screen.dart';
import 'package:book_app/Screens/Welcome/components/background.dart';
import 'package:book_app/components/rounded_button.dart';
import 'package:book_app/consttants.dart';
//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO Sonta.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            /*SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),*/
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Login",
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
            RoundedButton(
              text: "Sign up",
              color: kPrimaryLightColor,
              textColor: Colors.black,
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
