import 'dart:ui';
import 'package:flood_detector/components/rounded_button.dart';
import 'package:flood_detector/constants.dart';
import 'package:flood_detector/dashboard/dashboard.dart';
import 'package:flood_detector/login/background.dart';
import 'package:flood_detector/login/roundedInputField.dart';
import 'package:flood_detector/login/roundedPasswordField.dart';
import 'package:flood_detector/signUp/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          SizedBox(height: size.height  * 0.03),
          Image.asset(
            "assets/img/login.png",
            height: size.height * 0.35,
            ),
          SizedBox(height: size.height  * 0.03),
          RoundedInputField(
            hinText: "Masukan E-mail",
            onChanged: (values){},
            ),
          RoundedPasswordField(
            onChanged: (values){},
          ),
          SizedBox(height: size.height  * 0.03),
          RoundedButton(
            text: "LOGIN",
            press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return Dashboard_menu();},),);},
            ),
          SizedBox(height: size.height  * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Belum Mempunyai Akun?",style: TextStyle(color: kPrimaryColor),
            ),
              GestureDetector(
                //onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){return signUp();},),);},
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){return signUp();
                      },
                    ),
                  );
                },
                  child: Text(
                    "Daftar", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold), ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}



