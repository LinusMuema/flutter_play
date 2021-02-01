import 'package:flutter/material.dart';
import 'package:flutter_play/components/background.dart';
import 'package:flutter_play/components/country_details.dart';
import 'package:flutter_play/components/headings.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:measurer/measurer.dart';

class CountryInfo extends StatefulWidget {
  @override
  _CountryInfoState createState() => _CountryInfoState();
}

class _CountryInfoState extends State<CountryInfo> {
  var _detailsState = false;
  var _opacity = 0.0;
  var contentHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    final Country _country = ModalRoute.of(context).settings.arguments;
    final details = CountryDetails(_country);
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
                child: SafeArea(
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
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Stack(
                              children: [
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  child: Measurer(
                                    onMeasure: (size, constraints) {
                                      setState(() {
                                        contentHeight = size.height;
                                      });
                                    },
                                    child: AnimatedOpacity(
                                      opacity: _opacity,
                                      duration: Duration(milliseconds: 300),
                                      child:
                                          _detailsState ? details : Container(),
                                    ),
                                  ),
                                ),
                                AnimatedPositioned(
                                  bottom: _detailsState ? contentHeight : 0.0,
                                  left: 0.0,
                                  duration: Duration(milliseconds: 300),
                                  child: Heading(
                                    heading: _country.name,
                                    cap: places,
                                    color: Colors.white,
                                    large: false,
                                  ),
                                ),
                              ],
                            );
                          },
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
