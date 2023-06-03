import 'dart:convert';

class Card {
  late String name;
  late String _number;
  late String _balance;
  late String _password;

  String get password => _password;
  String get balance => _balance;
  String get number => _number;

  Card({
    required this.name,
    required String number,
    required String balance,
    required String password,
  }) ;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'number': number,
      'balance': balance,
      'password': password,
    };
  }

  factory Card.fromMap(Map<String, dynamic> map) {
    return Card(
      name: map['name'] as String,
      number: map['number'] as String,
      balance: map['balance'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Card(name: $name, number: $number, balance: $balance)';
  }
}
