// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class Card {
//   String name;
//   String number;
//   String balance;
//   String _password;
//   String get password=>_password;

//   Card({
//     required this.name,
//     required this.number,
//     required this.balance,
//     required this.p,
//   });
  



//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'name': name,
//       'number': number,
//       'balance': balance,
//       'password': password,
//     };
//   }

//   factory Card.fromMap(Map<String, dynamic> map) {
//     return Card(
//       name: map['name'] as String,
//       number: map['number'] as String,
//       balance: map['balance'] as String,
//       password: map['password'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

 
//   @override
//   String toString() {
//     return 'Card(name: $name, number: $number, balance: $balance)';
//   }


// }
