import '../../database/database.dart';
import '../../models/user_model.dart';
import '../../services/io_servise.dart';
import '../into_page.dart';
import 'sign_in_page.dart';

class SignUp {
  final int number;
  String errorMessage = "";
  SignUp({required this.number}) {
    builder();
  }

  void builder() {
    String password = io.setPassword("\nYangi parol kiriting(0 => ortga): ");

    if (password == "0") {
      IntroPage();
    } else {
      bool isSuccess = db.createData(User(number: number, password: password));
      print(isSuccess
          ? "Muvaffaqiyatli ro'yhatdan o'tildi!"
          : "Ro'yhatdan o'tish muvaffaqiyatsiz yakunlandi...");
      String command = io.inputText("1. Tizimga kirish\n"
          "0. Chiqish(default)\n"
          "$errorMessage\n"
          ">>> ");
      io.clr();
      switch (command) {
        case "1":
          SignIn(number: number);
          break;
        case "0":
          return;
        default:
          errorMessage = "Noto'g'ri buyruq kiritildi...";
          builder();
          return;
      }
    }
  }
}
