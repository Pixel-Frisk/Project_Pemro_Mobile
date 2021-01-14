import 'package:flood_detector/Profil/profil_screen.dart';
import 'package:flood_detector/constants.dart';
import 'package:flood_detector/laporanScreen/reportScreen.dart';
import 'package:flood_detector/signUp/signUp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard_menu extends StatefulWidget {
  @override
  _Dashboard_menuState createState() => _Dashboard_menuState();
}

class _Dashboard_menuState extends State<Dashboard_menu> {
  int selectIndex = 0;
  List kategori = ['Semua', 'Laporan', 'Maps', 'Profil'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryCOLOR,
      appBar: AppBar(
        elevation: 0,
        title: Text("Dashboard"),
        centerTitle: false,
      ),
      //appBar: buildAppBar(),
      //Body(),//memanggil method body
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //SEARCH
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20 / 4),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: Image.asset("assets/img/search.png"),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              ////BATASSS

              //Menu List Horizontal
              Container(
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: kategori.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: kDefaultPadding,
                        right:
                            index == kategori.length - 1 ? kDefaultPadding : 0,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: index == selectIndex
                            ? Colors.white.withOpacity(0.4)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        kategori[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: kDefaultPadding),

              //BATASSS
              //LAPORAN
              Container(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 2,
                  ),
                  height: 160,
                  // width: 150,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      //
                      Container(
                        height: 136,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: kBlueColor,
                            boxShadow: [kDefaultShadow]),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(22)),
                        ),
                      ),
                      //image
                      Positioned(
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          height: 160,
                          width: 200,
                          child: Image.asset("assets/img/laporan.png"),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: SizedBox(
                          height: 136,
                          width: size.width - 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding),
                                child: Text(
                                  "Laporan Kejadian Banjir",
                                  style: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.display1,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding * 1.5,
                                  vertical: kDefaultPadding / 4,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(22),
                                      topRight: Radius.circular(22)),
                                  color: kSecondaryColor,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return laporScreen();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Detail",
                                    style: GoogleFonts.lato(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .display1,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // BATAS
              //MAPS
              Container(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 2,
                  ),
                  height: 160,
                  // width: 150,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 136,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: kBlueColor,
                            boxShadow: [kDefaultShadow]),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(22)),
                        ),
                      ),
                      //image
                      Positioned(
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          height: 160,
                          width: 200,
                          child: Image.asset("assets/img/maps.png"),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: SizedBox(
                          height: 136,
                          width: size.width - 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding),
                                child: Text(
                                  "Maps",
                                  style: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.display1,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding * 1.5,
                                  vertical: kDefaultPadding / 4,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(22),
                                      topRight: Radius.circular(22)),
                                  color: kSecondaryColor,
                                ),
                                child: GestureDetector(
                                  // Cara Page Route
                                  // Navigator.push(context,MaterialPageRoute(builder: (context) {return signUp();},),);
                                  onTap: () {},
                                  child: Text(
                                    "Detail",
                                    style: GoogleFonts.lato(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .display1,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //BATAS
              //PROFIL
              Container(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 2,
                  ),
                  height: 160,
                  // width: 150,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      //image
                      Container(
                        height: 136,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: kBlueColor,
                            boxShadow: [kDefaultShadow]),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(22)),
                        ),
                      ),
                      //image
                      Positioned(
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          height: 160,
                          width: 200,
                          child: Image.asset("assets/img/profil.png"),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: SizedBox(
                          height: 136,
                          width: size.width - 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding),
                                child: Text(
                                  "Profil",
                                  style: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.display1,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding * 1.5,
                                  vertical: kDefaultPadding / 4,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(22),
                                      topRight: Radius.circular(22)),
                                  color: kSecondaryColor,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return profil();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Detail",
                                    style: GoogleFonts.lato(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .display1,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
