import 'card.dart';

class User {
  int number;
  String password;

  List<Card> cards;

  User({
    required this.number,
    required this.password,
    List<Card>? cards,
  }) : cards = cards ?? [];

  Map<String, dynamic> toMap() {
    return {
      'number': number,
      'password': password,
      'cards': cards.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      number: map['number']?.toInt() ?? 0,
      password: map['password'] ?? '',
      cards: List<Card>.from(map['cards']?.map((x) => Card.fromMap(x))),
    );
  }

  @override
  String toString() =>
      'User(number: $number, password: $password, cards: $cards)';
}
