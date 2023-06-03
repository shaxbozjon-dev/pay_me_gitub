import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
///User klasi har bir userni ma'lumotlarini saqlaydi
class User {
  String number;
  String password;

  List? cards;

  User({
    required this.number,
    required this.password,
    this.cards,
  });

  ///User obyektini Mapga o'girishimiz kerak bo'ladi shuning uchun toMap kerak
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'password': password,
    
    };
  }

  ///Mapdan User ma'lumotlarini olishimiz kerak chunki database map formatda
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      number: map['number'] as String,
      password: map['password'] as String,
    
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
