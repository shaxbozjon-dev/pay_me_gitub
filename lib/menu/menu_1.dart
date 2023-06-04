
import 'package:pay_me_gitub/models/card.dart';

import '../data_base/data_base.dart';
import '../models/user.dart';
import '../services/io_servise.dart';

void menu2() {
  print("Hush kelibsiz ");
  String number = io.inpudText("number kiriting: ");//raqam kiritishni suraydi

  print(dataBase);

  if (dataBase.containsKey(number.trim())) {//agar databaseda biza kiritgan raqam bormi deb tekshiradi
    var data = dataBase[number];//agar biza kiritgan raqam bulsa  shuni yangi uzgaruvchiga uzlashtiradi
  
    print("ruyhada bor ekansiz😎");
    String parol = io.inpudText("parol kiriting: ");//number ruyhatda bulgani uchun parol suraydi
    if (dataBase[parol] == parol) {//agar parol tugri bulsa menuga kiradi
      
      String commmon = io.inpudText(
          "1.Add card\n2.My cards\n3.Balance\n4.Utkazmalar\n5.settings\n0.ortga");
      switch (commmon) {
        case "1":
        
// data.

          // addcards();
        case "2":
          //MyCards
          break;
        default:
      }

      //Menu
    } else {
      print("number yoki parol xato");//agar parol xato terilgan
    }
  } else {
    print("Ruyhatdan utasizimi😎");//ruyhatdan bulmagani uchun ,ruyhattdan utishni taklif qilyabdi

    String str = io.inpudText("1.ha\n2.yuq\n--> ");
    switch (str) {
      case "1"://endi ism familiya suraydi
        String number = io.inpudText("number kiriting: ");
        String password = io.inpudText("pasword kiriting: ");

        User newuser = User(number: number, password: password, cards: []);//yangi user yasadik
        dataBase.addEntries([MapEntry(newuser.number, {newuser.password:newuser.cards} as Card)]);//yangi userni map kurinishida datbasega saqlaymiz
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
