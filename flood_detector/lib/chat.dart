import 'package:flutter/material.dart';
import 'package:flood_detector/detail.dart';
import 'package:flood_detector/partial/card.dart';
import 'package:flood_detector/routing.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.separated(
              separatorBuilder: (context, int x){
                return Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                );
              },
              itemCount: 3,
              itemBuilder: (context, int i){
                return InkWell(
                  onTap: (){
                    Routes.changePage(context,
                        DetailPage(
                          teks: 'Chat KE-${(i+1)}',
                        )
                    );
                  },
                  child: CardView(
                    warna: Colors.deepPurpleAccent,
                    isiTeks: 'Chat KE-${(i+1)}',
                  ),
                );
              }
          )
      ),
    );
  }
}
