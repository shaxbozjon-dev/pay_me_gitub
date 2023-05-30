///User klasi har bir userni ma'lumotlarini saqlaydi
class User {
  String number;
  String password;

  User({
    required this.number,
    required this.password,
  });

  // * User o'zida bir nechta kartalarni saqlashi mumkin.
  // * Masalan sizda ham 2 yoki 3 ta karta bo'lishi mumkin digande
  // * Shunichun cards digan list ochib olish kerak. Ichida Card lar bo'ladi

  //! bizga copyWith kerakmas chunki userni copy qiladigan narsasi yo'q
  // User copyWith({
  //   String? number,
  //   String? password,
  // }) {
  //   return User(
  //     number: number ?? this.number,
  //     password: password ?? this.password,
  //   );
  // }

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

  //! Bizga hozir toJson va fromJson kerakmas
  // String toJson() => json.encode(toMap());

  // factory User.fromJson(String source) =>
  //     User.fromMap(json.decode(source) as Map<String, dynamic>);

  //! toString ham kerakmas chunki biz userni paroli bilan birga hich qachon chiqarmaymmiz
  // @override
  // String toString() => 'User(number: $number, password: $password)';

  //! Ikkita userni solishtirish ham kerak bo'lmaydi
  // @override
  // bool operator ==(covariant User other) {
  //   if (identical(this, other)) return true;

  //   return other.number == number && other.password == password;
  // }

  //! Bu ham
  // @override
  // int get hashCode => number.hashCode ^ password.hashCode;
}
