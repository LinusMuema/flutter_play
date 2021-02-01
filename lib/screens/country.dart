import 'package:flutter/material.dart';
import 'package:flutter_play/components/background.dart';
import 'package:flutter_play/components/country_details.dart';
import 'package:flutter_play/components/headings.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';
import 'package:flutter_svg/svg.dart';

class CountryInfo extends StatefulWidget {
  @override
  _CountryInfoState createState() => _CountryInfoState();
}

class _CountryInfoState extends State<CountryInfo>
    with TickerProviderStateMixin {
  var _detailsState = false;
  var _opacity = 0.0;

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
          child: BlurBackground(
              detailsState: _detailsState,
              content: Container(
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
                    Heading(
                      heading: _country.name,
                      cap: places,
                      color: Colors.white,
                      large: false,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: AnimatedOpacity(
                        opacity: _opacity,
                        duration: Duration(milliseconds: 5000),
                        child: _detailsState
                            ? CountryDetails(_country)
                            : Container(),
                      ),
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
              )),
        ),
      ),
    );
  }

  showDetails() {
    setState(() {
      _detailsState = !_detailsState;
      _opacity = _detailsState ? 1.0 : 0.0;
    });
  }
}
