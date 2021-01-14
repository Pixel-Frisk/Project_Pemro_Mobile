import 'package:flood_detector/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flood_detector/Profil/helper.dart';

class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
  var information;

  @override
  void initState(){
    getInformation();
    super.initState();
  }

  void getInformation() async{
    var y = await Helper.getInformation();
    setState(() {
      information = y;
    });
  }

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
                  backgroundImage: NetworkImage("https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png")
                  //AssetImage("assets/img/fotoProfil.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jaka Baru",
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
                    "${information}",
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
              height: size.height * 0.54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            // Container(
            //   height: 170,
            //   width: size.width *2,
            //   color: kPrimaryCOLOR,
            //   alignment: Alignment.center,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       TextFormField(
            //         controller: inputan,
            //         decoration: InputDecoration(
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10)
            //             ),
            //             labelText: "Ubah Informasi",
            //             labelStyle: TextStyle(color: Colors.black87)
            //         ),
            //       ),
            //       SizedBox(height: 20),
            //       InkWell(
            //         onTap: () async{
            //           Helper.saveInformation(
            //               inputan.text
            //           );
            //         },
            //         child: Container(
            //           alignment: Alignment.center,
            //           color: Colors.white,
            //           height: 40,
            //           width: 150,
            //           child: Text("Submit", style: TextStyle(color: Colors.blueAccent),),
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
