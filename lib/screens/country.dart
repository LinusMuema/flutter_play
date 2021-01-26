import 'package:flutter/material.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';
import 'package:flutter_svg/svg.dart';

class CountryInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Country _country = ModalRoute.of(context).settings.arguments;
    final places = "${_country.places} places to visit";
    print(_country);
    return Scaffold(
      body: Hero(
        tag: _country.name,
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: bgImage(_country.image),
          child: SafeArea(
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: verticalGradientRounded(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: SvgPicture.asset('assets/images/back.svg'),
                  ),
                  Spacer(),
                  Container(
                      child: Text(_country.name, style: h2(Colors.white)),
                      margin: EdgeInsets.only(left: 20, bottom: 5)),
                  Container(
                    child: Text(places, style: normal(Colors.white)),
                    margin: EdgeInsets.only(left: 20, bottom: 20),
                  ),
                  Container(
                    height: 36,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: SvgPicture.asset('assets/images/more.svg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
