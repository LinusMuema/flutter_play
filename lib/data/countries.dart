class Country {
  String name;
  int places;
  String continent;
  String image;
  String description;

  Country(
      {this.name, this.places, this.image, this.continent, this.description});
}

final Country scotland = Country(
    name: "Scotland",
    places: 24,
    image: 'assets/images/scotland.jpg',
    continent: "Europe",
    description:
        "Scotland, the U.K.’s northernmost country, is a land of mountain wildernesses such as the Cairngorms and Northwest Highlands, interspersed with glacial glens (valleys) and lochs (lakes).");
final Country spain = Country(
    name: "Spain",
    places: 7,
    image: 'assets/images/spain.jpg',
    continent: "Europe",
    description: "");
final Country newZealand = Country(
    name: "New Zealand",
    places: 10,
    image: 'assets/images/new_zealand.jpg',
    continent: "Oceania",
    description: "");
final Country germany = Country(
    name: "Germany",
    places: 19,
    image: 'assets/images/germany.jpg',
    continent: "Europe",
    description: "");

List<Country> getCountries() {
  return [spain, scotland, newZealand, germany];
}
