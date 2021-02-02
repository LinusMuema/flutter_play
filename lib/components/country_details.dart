import 'package:flutter/material.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';

class CountryDetails extends StatefulWidget {
  final Country _country;
  CountryDetails(this._country);

  @override
  _CountryDetailsState createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth(context),
      margin: EdgeInsets.only(left: 25, top: 10),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(right: 30),
              child: Text(widget._country.description, style: h5(Colors.white)))
        ],
      ),
    );
  }
}
