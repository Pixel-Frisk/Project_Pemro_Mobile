import 'package:flutter/material.dart';
import 'package:tugas_flutter/chat.dart';
import 'package:tugas_flutter/map.dart';
import 'package:tugas_flutter/routing.dart';
import 'package:tugas_flutter/weather.dart';
import 'package:tugas_flutter/login.dart';

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
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
        centerTitle: true,
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
                  Routes.changePage(context, Map());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 90,
                  width: 150,
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
                  Routes.changePage(context, Weather());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 90,
                  width: 150,
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
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 90,
                  width: 150,
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
              SizedBox(height: 10),
              InkWell(
                onTap: (){
                  Routes.changePage(context, login());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 90,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Logout", style: TextStyle(
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