import '../services/io_servise.dart';
import '../pages/builder.dart';
import '../services/io_servise.dart';
import '../auth/sign_in.dart';
import '../auth/sign_up.dart';
import '../data_base/data_base.dart';

class SignUp {
  void signUp() {
    String number = io.inpudText("number kiriting: ");

    for (var e in data.dataBase.entries) {
      if (e.key == number) {
        String parol = io.inpudText("number kiriting: ");
      } else {
        print(" utasizimi");
      }
    }

    print("sign?UP");
  }
}
