class User {
  String name;
  String image;

  User({this.name, this.image});
}

final janet = User(name: "Janet", image: "https://bit.ly/3oyOMlq");
final maria = User(name: "Maria", image: "https://bit.ly/3oDTChd");
final anna = User(name: "Anna", image: "https://bit.ly/39JhNa1");
final user1 = User(name: "", image: "");
final user2 = User(name: "", image: "");
final user3 = User(name: "", image: "");
final user4 = User(name: "", image: "");
final user5 = User(name: "", image: "");
final user6 = User(name: "", image: "");

List<User> getUsers() {
  return [janet, maria, anna, user1, user2, user3, user4, user5, user6];
}
