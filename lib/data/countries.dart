class Country {
  String name;
  int places;
  String image;

  Country({this.name, this.places, this.image});
}

final Country scotland =
    Country(name: "Scotland", places: 24, image: 'assets/images/scotland.jpg');
final Country spain =
    Country(name: "Spain", places: 7, image: 'assets/images/spain.jpg');
final Country newZealand = Country(
    name: "New Zealand", places: 10, image: 'assets/images/new_zealand.jpg');
final Country germany =
    Country(name: "Germany", places: 19, image: 'assets/images/germany.jpg');

List<Country> getCountries() {
  return [spain, scotland, newZealand, germany];
}
