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
    description:
        "Passionate, sophisticated and devoted to living the good life, Spain is both a stereotype come to life and a country more diverse than you ever imagined. Its diverse landscapes stir the soul");
final Country newZealand = Country(
    name: "New Zealand",
    places: 10,
    image: 'assets/images/new_zealand.jpg',
    continent: "Oceania",
    description:
        "Get ready for mammoth national parks, dynamic Māori culture, and world-class surfing and skiing. New Zealand can be mellow or action-packed, but it's always epic. This decent nation is a place where you can relax and enjoy (rather than endure) your travels");
final Country germany = Country(
    name: "Germany",
    places: 19,
    image: 'assets/images/germany.jpg',
    continent: "Europe",
    description:
        "Prepare for a roller-coaster ride of feasts, treats and temptations experiencing Germany's soul-stirring scenery, spirit-lifting culture, big-city beauties, romantic palaces and half-timbered towns.");

List<Country> getCountries() {
  return [spain, scotland, newZealand, germany];
}
