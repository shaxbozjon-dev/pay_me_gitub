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
//^Gitgub da ishlash zur ekanku😎😎✅
  // * User o'zida bir nechta kartalarni saqlashi mumkin.
  // * Masalan sizda ham 2 yoki 3 ta karta bo'lishi mumkin digande
  // * Shunichun cards digan list ochib olish kerak. Ichida Card lar bo'ladi

  ///User obyektini Mapga o'girishimiz kerak bo'ladi shuning uchun toMap kerak
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'password': password,
      'List': cards,
    };
  }

  ///Mapdan User ma'lumotlarini olishimiz kerak chunki database map formatda
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      number: map['number'] as String,
      password: map['password'] as String,
      cards: map['List'] as List,
    );
  }
}
