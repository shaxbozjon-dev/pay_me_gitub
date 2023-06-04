import 'package:pay_me_gitub/models/card.dart';

import '../data_base/data_base.dart';
import '../models/user.dart';
import '../services/io_servise.dart';

void menu2() {
  //?kodlarim juda sodda va hunuk bub qoldi   murakkabroq qilmoqchidim ,umuman chiqorolmadim,
  //~hozi userga id berib     alohida list ochib cartalarni Idsi bilan userni idisi tenglashtirdim
  print("Hush kelibsiz ");
  String number = io.inpudText("number kiriting: ");

  print(dataBase);

  if (dataBase.containsKey(number.trim())) {
    var data = dataBase[number];

    print("ruyhada bor ekansiz😎");
    String parol = io.inpudText("parol kiriting: ");
    if (data == parol) {
      while (true) {
        String commmon = io.inpudText(
            "1.Add card\n2.My cards\n3.Balance\n4.Utkazmalar\n5.settings\n10.ortga\n10.chiqish"); //menu

        switch (commmon) {
          case "1":
            String name = io.inpudText("name card: ");
            String number = io.inpudText("number card: ");
            int balance = io.inpudNumber("balance card: ");
            String password = io.inpudText("password card: ");
            String id = parol;
            Card card = Card(
                name: name,
                number: number,
                balance: balance,
                password: password,
                id: id);

            bazacards.add(card);
            break;
          case "2":
            int j = 0;
            for (Card e in bazacards) {
              //cartalarni aylanib user Idsi bilan bir hil buganlarni chiqoryabman
              if (e.id == parol) {
                j++;
                print("""$j:
                        
                        ||                           
                        || cards name:${e.name}      
                        ||
                        ||
                        || cards number:${e.number}                              
                        ||                           
                        ||caeds balance:${e.balance} 
                        ||**********************************
                        """);
              }
            }

          case "3":
            int balanse = 0; //bu yerda balanse
            for (Card e in bazacards) {
              if (e.id == parol) {}
              balanse += e.balance;
            }
            print("Sizning balansingiz ${balanse} so'm");
            break;
         

          case "0":
            break;

          default:
        }
      }
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
