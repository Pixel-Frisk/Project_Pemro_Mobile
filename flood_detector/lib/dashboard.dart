import 'package:flutter/material.dart';
import 'package:flood_detector/chat.dart';
import 'package:flood_detector/routing.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                child: Text( "Pilihan Menu", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){
                },
                child: Container(
                  height: 90,
                  width: 150,
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Maps", style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: (){
                },
                child: Container(
                  height: 90,
                  width: 150,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Perkiraan Cuaca", style: TextStyle(
                        color: Colors.white,
                        fontSize: 10
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: (){
                  Routes.changePage(context, Chat());
                },
                child: Container(
                  height: 90,
                  width: 150,
                  color: Colors.lightGreen,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Chat", style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
