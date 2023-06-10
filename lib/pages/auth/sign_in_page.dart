import 'package:pay_me_gitub/pages/main/main_page.dart';

import '../../database/database.dart';
import '../../models/user_model.dart';
import '../../services/io_servise.dart';
import '../into_page.dart';

class SignIn {
  final int number;
  SignIn({required this.number}) {
    builder();
  }

  void builder() {
    String password = io.inputText("Parolni kiriting(0 => ortga): ");
    if (password == "0") {
      IntroPage();
      return;
    }

    User user = db.readData(number);
    if (user.password == password) {
      ty.taymer("Biroz kuting.", 3);
      MainPage();
    } else {
      print("Parol xato!");
      String command = io.inputText("1. Qayta urinish \n"
          "0. Ortga(default) \n\n"
          ">>> ");
      io.clr();
      if (command == "1") {
        builder();
      } else {
        IntroPage();
      }
    }
  }
}
