import 'package:flood_detector/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryCOLOR,
      appBar: AppBar(
        elevation: 0,
        title: Text("Profil"),
        centerTitle: false,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.only(left: 29)),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/img/fotoProfil.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Brian Imanuel",
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.only(top: 15)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Text(
                            "Banyuwangi-Muncar",
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                wordSpacing: 2,
                                letterSpacing: 3,
                                textStyle: Theme.of(context).textTheme.display1,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    "E-mail : brianimanuel12@gmail.com",
                    style: GoogleFonts.lato(
                        color: Colors.black54,
                        textStyle: Theme.of(context).textTheme.display1,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 2,
              height: size.height * 0.61,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
