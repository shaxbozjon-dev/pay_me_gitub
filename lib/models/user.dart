import 'dart:convert';

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
    return {
      'number': number,
      'password': password,
      'cards': cards.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      number: map['number'] ?? '',
      password: map['password'] ?? '',
      cards: List<Card>.from(map['cards']?.map((x) => Card.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
