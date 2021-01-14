import 'package:flutter/material.dart';
import 'package:flood_detector/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    this.color = kPrimaryColor,
    this.press,
    this.text,
    this.textColor = Colors.white,
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            color: color,
            onPressed: press,
            child: Text(text,style: TextStyle(color: textColor),)),
      ),
    );
  }
}