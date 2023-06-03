import 'dart:math';

import 'package:pay_me_gitub/models/card.dart';

import '../services/io_servise.dart';
import '../models/user.dart';
import '../data_base/data_base.dart';
import '../pages/builder.dart';

void menu2() {
  print("Hush kelibsiz ");
  String number = io.inpudText("number kiriting: ");

  print(dataBase);

  if (dataBase.containsKey(number.trim())) {
    var data = dataBase[number];
    print(data);
    print("ruyhada bor ekansiz😎");
    String parol = io.inpudText("parol kiriting: ");
    if (data == parol) {
      String commmon = io.inpudText(
          "1.Add card\n2.My cards3.\nBalance\n4.Utkazmalar\n5.settings\n0.ortga");
      switch (commmon) {
        case "1":
          String name = io.inpudText("name kiriting: ");
          String number = io.inpudText("number kiriting:");
          String balance = io.inpudText("balance kiriting: ");
          String password = io.inpudText("password kiriting: ");
        
          Card newcard = Card(
              name: name, number: number, balance: balance, password: password);
          for (User e in bazacards) {
            if (e.id == newcard) {}
          }
          break;
        case "2":
          //MyCards
          break;
        default:
      }

      //Menu
    } else {
      print("number yoki parol xato");
    }
  } else {
    print("Ruyhatdan utasizimi😎");

    String str = io.inpudTextPas("1.ha\n2.yuq");
    switch (str) {
      case "1":
        String number = io.inpudText("number kiriting: ");
        String password = io.inpudText("pasword kiriting: ");
        int id = Random().nextInt(10000);
        User newuser = User(number: number, password: password, id: id);
        dataBase.addEntries([MapEntry(newuser.number, newuser.password)]);
        print(dataBase);

        break;
      case "2":
        print("ortga qaytdik");
        break;
      default:
        return;
    }
  }
}

void ADDcards() {}
