import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_play/data/City.dart';

class CityItem extends StatelessWidget {
  final City _city;
  CityItem(this._city);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Hero(
              tag: _city.name,
              child: Image.network(_city.image, width: 200, height: 150),
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_city.name),
                Text(_city.description),
              ],
            ),
          )
        ],
      ),
    );
  }
}
