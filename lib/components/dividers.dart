import 'package:flutter/material.dart';

final Color color = Color(0xffD8D8D8);

class WordedDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(children: <Widget>[
        Expanded(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(color: color))),
        Text("Or",
            style: TextStyle(
                color: color,
                fontSize: 20,
                fontWeight: FontWeight.w100,
                fontFamily: 'Roboto')),
        Expanded(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(color: color))),
      ]),
    );
  }
}
