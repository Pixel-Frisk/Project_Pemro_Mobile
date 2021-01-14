import 'dart:ui';
import 'package:flood_detector/components/rounded_button.dart';
import 'package:flood_detector/constants.dart';
import 'package:flood_detector/signUp/signUp.dart';
import 'package:flood_detector/welcome/background.dart';
import 'package:flutter/material.dart';
import 'package:flood_detector/login/login_screen.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("SELAMAT DATANG",
            style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor),
            ),
            Text("DI FLOOD DETECTOR",
              style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor),
            ),
            SizedBox(height: size.height * 0.05),
            Positioned(child: Image.asset('assets/img/flood.jpg',height: size.height * 0.45,)
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: "LOGIN",
              color: kPrimaryColor,
              press: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                      return loginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "DAFTAR",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return signUp();},),);},
            ),
          ],
      ),
        ));
    }
}



