import 'package:flutter/material.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';

Widget countryItem(Country country, BuildContext context) {
  final places = "${country.places} places to visit";
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, '/country', arguments: country);
    },
    child: Hero(
      tag: country.name,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: bgImageRounded(country.image),
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: verticalGradientRounded(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Text(country.name, style: h3(Colors.white)),
                  margin: EdgeInsets.only(left: 20, bottom: 5)),
              Container(
                child: Text(places, style: caption(Colors.white)),
                margin: EdgeInsets.only(left: 20, bottom: 20),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
