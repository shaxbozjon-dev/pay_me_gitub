import '../models/user.dart';
 Map<String, String> dataBase = {
    "1": "1",
    
    
  };

  bool createData({required User user}) {
    if (dataBase.containsKey(user.number)) {
      return false;
    } else {
      dataBase[user.number] = user.toJson();
      return true;
    }
  }