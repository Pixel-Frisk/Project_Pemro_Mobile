import 'package:flutter/material.dart';
import 'package:flood_detector/dashboard.dart';
import 'package:flood_detector/routing.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(//membuat icon person
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle
              ),
              child: Center(
                child: Icon(Icons.person, size: 50, color: Colors.white,),
              ),
            ),

            SizedBox(height: 20,),

            Text("Selamat Datang", style: TextStyle(fontSize: 20, color: Colors.black87),),

            SizedBox(height: 80,),

            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)
                  ),
                  prefixIcon: Icon(Icons.person, size: 40,),
                  hintText: "Masukan Username",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.black87)
              ),
            ),

            SizedBox(height: 20,),

            TextFormField(
              obscureText: true,//untuk hide password
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)
                  ),
                  prefixIcon: Icon(Icons.lock, size: 40,),
                  hintText: "Masukan Password",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black87)
              ),
            ),

            SizedBox(height: 50,),

            Card(//btn login
              color: Colors.black87,
              elevation: 5,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: (){
                    Routes.changePage(context, Dashboard());
                  },
                  child: Center(
                    child: Text("Login", style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
