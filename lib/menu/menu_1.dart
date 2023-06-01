import 'dart:math';

import '../services/io_servise.dart';
import '../models/user.dart';
import '../data_base/data_base.dart';
import '../pages/builder.dart';

void menu2() {
  print("Hush kelibsiz ");
  String number = io.inpudText("number kiriting: ");
  print(dataBase);
  for (var e in dataBase.entries) {
    print(dataBase.entries);
    if (e.key == number) {
      print("ruyhada bor ekansiz😎");
      String parol = io.inpudText("parol kiriting: ");
      if (e.value == parol) {
        print("Menu✔✅💹");
        print("Menular 1.pul janatmoqchimisiz ");
        print(e);
        break;
        //Menu
      } else {
        print("number yoki parol xato");
        break;
        
      }
      break;
    } else {
      print("Ruyhatdan utasizimi😎");

      String str = io.inpudTextPas("1.ha\n2.yuq");
      switch (str) {
        case "1":
          String number = io.inpudText("number kiriting: ");
          String password = io.inpudText("pasword kiriting: ");

          User newuser = User(number: number, password: password);
          dataBase.addEntries([MapEntry(newuser.number, newuser.password)]);
          print(dataBase);

          break;
        case "2":
          print("ortga qaytdik");
          break;
        default:
          return;
      }

      break;
    }
  }

  print("sign?UP");
}
