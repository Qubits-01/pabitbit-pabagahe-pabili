import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pabitbit_pabagahe_pabili/constants.dart';
import 'package:pabitbit_pabagahe_pabili/screens/welcome/widgets/background.dart';
import 'package:pabitbit_pabagahe_pabili/widgets/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // size provides the total height and width of the screen.
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to\nPabitit Pabagahe Pabili',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                wordSpacing: 2,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButtons(
              text: 'LOGIN',
              press: () {},
            ),
            RoundedButtons(
              text: 'SIGN UP',
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
