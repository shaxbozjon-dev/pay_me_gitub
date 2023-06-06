import 'dart:convert';

class Card {
  late String name;
  late String _number;
  late int _balance;
  late String _password;
  late String _id;

  String get password => _password;
  int get balance => _balance;
  set balance(int b) {
    _balance = b;
  }

  String get number => _number;
  String get id => _id;

  Card({
    required this.name,
    required String number,
    required int balance,
    required String password,
    required String id,
  })  : _number = number,
        _balance = balance,
        _id = id,
        _password = password;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'number': number,
      'balance': balance,
      'password': password,
      'id': id,
    };
  }

  factory Card.fromMap(Map<String, dynamic> map) {
    return Card(
      name: map['name'] as String,
      id: map['id'] as String,
      number: map['number'] as String,
      balance: map['balance'] as int,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Card(name: $name, number: $number, balance: $balance)';
  }
}
