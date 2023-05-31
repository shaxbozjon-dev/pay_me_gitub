import '../services/io_servise.dart';
import '../models/user.dart';
import '../data_base/data_base.dart';
import '../pages/builder.dart';
import '../auth/sign_in.dart';
import '../auth/sign_up.dart';

Menu menu1 = Menu();
void main(List<String> args) {
  menu1.menu2();
}

class Menu {
  void menu2() {
    String number = io.inpudText("number kiriting: ");

    for (var e in data.dataBase.entries) {
      if (e.key == number) {
        String parol = io.inpudText("parol kiriting: ");
      } else {
        print("Ruyhatdan utasizimi😎\n1.ha\n2.yuq");

        String str = io.inpudText("1.ha\n2.yuq");
        switch (str) {
          case "1":
            print("ruyhatdan uting");
            break;
          case "2":
            print("ortga qaytdik");
          default:
        }
      }
    }

    print("sign?UP");
  }
}
