import 'package:flutter/material.dart';

class TeksClass extends StatefulWidget {
  final String isi;
  TeksClass({this.isi});
  @override
  _TeksClassState createState() => _TeksClassState();
}

class _TeksClassState extends State<TeksClass> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.isi, style: TextStyle(color: Colors.white,));
  }
}