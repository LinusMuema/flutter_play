import 'package:flutter_play/data/City.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

final City losAngeles = City(
  name: "Los Angeles",
  description: lipsum.createSentence(sentenceLength: 10),
  image:
      "https://images.pexels.com/photos/2816168/pexels-photo-2816168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  lat: 34.0522,
  lng: -118.2437,
);

final City newYork = City(
  name: "New York",
  description: lipsum.createSentence(sentenceLength: 10),
  image:
      "https://images.pexels.com/photos/290386/pexels-photo-290386.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  lat: 40.7128,
  lng: -74.0060,
);

class Data {
  List<City> getData() {
    final List<City> cities = List();
    cities.add(losAngeles);
    cities.add(newYork);
    return cities;
  }
}
