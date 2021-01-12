import 'package:flutter/material.dart';
import 'package:flutter_play/data/City.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final City city = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            child: Hero(
              tag: city.name,
              child: Image.network(city.image),
            ),
            onTap: () => {Navigator.pop(context)},
          )
        ],
      ),
    );
  }
}
