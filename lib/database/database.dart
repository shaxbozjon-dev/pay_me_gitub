import '../models/user_model.dart';

Database db = Database();

class Database {
  Map<int, Map<String, Object>> dataBase = {};

  /// Bazaga yangi user qo'shish uchun
  bool createData(User user) {
    try {
      dataBase[user.number] = user.toMap();
      return true;
    } catch (e) {
      return false;
    }
  }

  bool isInDataBase({required int number}) {
    return dataBase.containsKey(number);
  }
}
