import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';
import 'package:flutter_svg/svg.dart';

class CountryInfo extends StatefulWidget {
  @override
  _CountryInfoState createState() => _CountryInfoState();
}

class _CountryInfoState extends State<CountryInfo> with RouteAware {
  var _detailsHeight = 5.0;
  var _detailsState = false;

  @override
  Widget build(BuildContext context) {
    final Country _country = ModalRoute.of(context).settings.arguments;
    final places = "${_country.places} places to visit";

    return Scaffold(
      body: Hero(
        tag: _country.name,
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: bgImage(_country.image),
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: _detailsState ? 5.0 : 0.0,
                sigmaY: _detailsState ? 5.0 : 0.0),
            child: SafeArea(
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: verticalGradientRounded(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/images/back.svg'),
                      ),
                    ),
                    Spacer(),
                    Container(
                        child: Text(_country.name, style: h2(Colors.white)),
                        margin: EdgeInsets.only(left: 20, bottom: 5)),
                    Container(
                      child: Text(places, style: normal(Colors.white)),
                      margin: EdgeInsets.only(left: 20, bottom: 20),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _detailsHeight,
                    ),
                    GestureDetector(
                      onTap: () => showDetails(),
                      child: Container(
                        height: 24,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Center(
                          child: SvgPicture.asset('assets/images/more.svg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  showDetails() {
    setState(() {
      _detailsState = !_detailsState;
      _detailsHeight = _detailsState ? 100 : 0;
    });
  }
}
