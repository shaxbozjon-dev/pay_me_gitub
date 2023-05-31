import 'dart:math';

import '../services/io_servise.dart';
import '../models/user.dart';
import '../data_base/data_base.dart';
import '../pages/builder.dart';

class Menu {
  void menu2() {
    print("Hush kelibsiz ");
    String number = io.inpudText("number kiriting: ");

    for (var e in data.dataBase.entries) {
      if (e.key == number) {
        String parol = io.inpudText("parol kiriting: ");
        if (e.value == parol) {
          print("Menu");
          print(e);
          //Menu
        }
        break;
      } else {
        print("Ruyhatdan utasizimi😎\n1.ha\n2.yuq");

        String str = io.inpudText("1.ha\n2.yuq");
        switch (str) {
          case "1":
            String number = io.inpudText("number kiriting: ");
            String password = io.inpudText("pasword kiriting: ");
            int id = Random().nextInt(100);
            User newuser = User(number: number, password: password, id: id);
            //!shu yerni qilolmadim ,new user obyektni data basega qushish kerak
            break;
          case "2":
            print("ortga qaytdik");
          default:
            return;
        }
      }
    }

    print("sign?UP");
  }
}
