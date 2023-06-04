import 'package:pay_me_gitub/models/card.dart';

import '../models/user.dart';

Card card =
    Card(name: "karta", number: "1234", balance: "123", password: "123123");
Map<String, Card> dataBase = {
  "1": card,
  
};
List bazacards = [];
bool createData({required User user}) {
  if (dataBase.containsKey(user.number)) {
    return false;
  } else {
    dataBase[user.number] = user.toJson() as Card;
    return true;
  }
}
