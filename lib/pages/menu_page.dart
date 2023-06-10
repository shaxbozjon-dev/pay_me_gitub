import '../database/database.dart';
import '../services/io_servise.dart';
import 'auth/sign_in_page.dart';
import 'auth/sign_up_page.dart';
import 'builder.dart';

class Menu extends Builder {
  String errorMessage = "";
  @override
  void builder() {
    super.builder();
    Center(message: "Menu");

    int number = io.inputNumber("$errorMessage \n"
        "Raqamingizni kiriting(0 => chiqish): ");

    if (number < 0) {
      errorMessage = "Raqam noto'g'ri formatda kiritildi...";
      builder();
      return;
    } else if (number == 0) {
      return;
    }

    if (db.isInDataBase(number: number)) {
      SignIn(number: number);
    } else {
      SignUp(number: number);
    }
  }
}
