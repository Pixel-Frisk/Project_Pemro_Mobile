import 'package:flood_detector/components/rounded_button.dart';
import 'package:flood_detector/login/login_screen.dart';
import 'package:flood_detector/login/roundedInputField.dart';
import 'package:flood_detector/login/roundedPasswordField.dart';
import 'package:flood_detector/signUp/background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
              "DAFTAR",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          Image.asset(
            "assets/img/signUp.png",
            width: size.width * 0.7,
            ),
          RoundedInputField(hinText: "E-mail",),
          RoundedPasswordField(),
          RoundedButton(
            text: "DAFTAR",
            press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return loginScreen();},),);},
            ),
          ],
        ),
      ),
    );
  }
}


