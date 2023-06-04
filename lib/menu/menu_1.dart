
import 'package:pay_me_gitub/models/card.dart';

import '../data_base/data_base.dart';
import '../models/user.dart';
import '../services/io_servise.dart';

void menu2() {
  print("Hush kelibsiz ");
  String number = io.inpudText("number kiriting: ");

  print(dataBase);

  if (dataBase.containsKey(number.trim())) {
    var data = dataBase[number];
  
    print("ruyhada bor ekansiz😎");
    String parol = io.inpudText("parol kiriting: ");
    if (data == parol) {
      
      String commmon = io.inpudText(
          "1.Add card\n2.My cards3.\nBalance\n4.Utkazmalar\n5.settings\n0.ortga");
      switch (commmon) {
        case "1":
          addcards();
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

    String str = io.inpudText("1.ha\n2.yuq\n--> ");
    switch (str) {
      case "1":
        String number = io.inpudText("number kiriting: ");
        String password = io.inpudText("pasword kiriting: ");

        User newuser = User(number: number, password: password, cards: []);
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
