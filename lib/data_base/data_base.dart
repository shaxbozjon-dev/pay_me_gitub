import '../models/user.dart';

Map<String, String> dataBase = {
  "1": "1",
};

List bazacards = [];

bool createData({required User user}) {
  if (dataBase.containsKey(user.number)) {
    return false;
  } else {
    dataBase[user.number] = user.toMap();
    return true;
  }
}

// * Database ni klass qilib yasaganiz yaxshi

///Xullas logika bo'yicha siz userda faqat name va password saqlamiysiz
///Sizda yana userni kartalari ham bor. Shuninchun Baza Map<String, String> emas,
///Map<String, Map<String, Object>> bo'lishi kerak!

// * taxminiy ko'rinishi
// const fakeData = {
//   "992041155": {
//     "name": "Murodjon",
//     "password": "Murodjon1!",
//     "cards": [card1, card2],
//   }
// };
