import 'package:flood_detector/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';

class laporScreen extends StatefulWidget {
  @override
  _laporScreenState createState() => _laporScreenState();
}

class _laporScreenState extends State<laporScreen> {
  List dataJSON;

  //mengambil data(dimasukan ke dalam listDataJSON)
  Future<String> ambilData() async {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});
    this.setState(() {
      dataJSON = json.decode(hasil.body);
    });
  }

  @override
  void initState() {
    this.ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryCOLOR,
        elevation: 0,
        title: Text("Laporan"),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: dataJSON == null ? 0 : dataJSON.length,
        itemBuilder: (context, i) {
          return Container(
            padding: EdgeInsets.all(15),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dataJSON[i]['title'],
                    style: TextStyle(fontSize: 15, color: Colors.lightBlue),
                  ),
                  Text(dataJSON[i]['body'],
                    style: TextStyle(fontSize: 15, color: Colors.black54),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
