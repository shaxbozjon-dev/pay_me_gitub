import 'dart:convert';


///User klasi har bir userni ma'lumotlarini saqlaydi
class User {
  late String number;
  late String password;


  User({
    required this.number,
    required this.password,
 
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

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
