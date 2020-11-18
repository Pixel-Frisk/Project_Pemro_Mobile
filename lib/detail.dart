import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String teks;
  DetailPage({this.teks});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.teks}"),
      ),
    );
  }
}