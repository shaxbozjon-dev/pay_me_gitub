import 'card.dart';

///User klasi har bir userni ma'lumotlarini saqlaydi
class User {
  String number;
  String password;

  List<Card> cards;
  User({
    required this.number,
    required this.password,
    List<Card>? cards,
  }) : cards = cards ?? [];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'password': password,
      'cards': cards.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      number: map['number'] as String,
      password: map['password'] as String,
      cards: List<Card>.from(
        (map['cards'] as List<int>).map<Card>(
          (x) => Card.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
