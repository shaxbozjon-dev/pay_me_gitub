import '../models/user_model.dart';

Database db = Database();

class Database {
  Map<int, Map<String, Object>> dataBase = {};

  bool createData(User user) {
    dataBase[user.number] = user.toMap();
    return true;
  }
}
