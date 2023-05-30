// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  String number;
  String parol;
  User({
    required this.number,
    required this.parol,
  });

  User copyWith({
    String? number,
    String? parol,
  }) {
    return User(
      number: number ?? this.number,
      parol: parol ?? this.parol,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'parol': parol,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      number: map['number'] as String,
      parol: map['parol'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(number: $number, parol: $parol)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.number == number && other.parol == parol;
  }

  @override
  int get hashCode => number.hashCode ^ parol.hashCode;
}
