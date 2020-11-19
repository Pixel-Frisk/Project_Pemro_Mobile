import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: new Container(
        padding: EdgeInsets.all(0),
        child: new Image.asset('assets/img/weather.jpg', width: 700, fit: BoxFit.fill,),
      ),
    );
  }
}