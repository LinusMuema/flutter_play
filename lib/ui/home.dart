import 'package:flutter/material.dart';
import 'package:flutter_play/components/city_item.dart';
import 'package:flutter_play/data/data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cities = Data().getData();

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, '/info', arguments: city),
                  child: CityItem(city));
            }),
      ),
    );
  }
}
