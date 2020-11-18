import 'package:flutter/material.dart';

class Routes{
  static changePage(BuildContext context, StatefulWidget classes){
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (_) {
              return classes;
            }
        )
    );
  }
}