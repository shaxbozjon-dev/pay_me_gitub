import 'card_model.dart';

class User {
  int number;
  String password;

  List<Card> cards;

  User({
    required this.number,
    required this.password,
    List<Card>? cards,
  }) : cards = cards ?? [];

  @override
  String toString() =>
      'User(number: $number, password: $password, cards: $cards)';

  Map<String, Object> toMap() {
    return {
      'number': number,
      'password': password,
      'cards': cards.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, Object> map) {
    return User(
      number: map['number'] as int,
      password: map['password'] as String,
      cards: List<Card>.from(
        (map['cards'] as List<Map<String, Object>>).map<Card>(
          (x) => Card.fromMap(x),
        ),
      ),
    );
  }
}
