import '../data_base/data_base.dart';
import '../models/card.dart';
import '../models/user.dart';
import '../pages/builder.dart';
import '../services/io_servise.dart';

// void ADDcards() {}

class Menu extends Builder {
  @override
  void builder() {
    super.builder();

    Center(message: "Hush kelibsiz");

    String number = io.inpudText("Raqamingizni kiriting(0 => Chiqish): ");
    if (dataBase.containsKey(number.trim())) {
      var data = dataBase[number];

      print("ruyhada bor ekansiz😎");
      String parol = io.inpudText("parol kiriting: ");
      if (data == parol) {
        while (true) {
          String commmon = io.inpudText(
              "1.Add card\n2.My cards\n3.Balance\n4.Utkazmalar\n5.settings\n0.ortga\n100.chiqish\n"); //menu

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
                  print("""$j
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
              break;
            case "3":
              String viewcard =
                  io.inpudText("qaysi kartani balanceni kurmoqchisiz? ");
              int balanse = 0; //bu yerda balanse
              for (Card e in bazacards) {
                if (e.id == parol) {
                  if (e.number == viewcard) {
                    balanse = e.balance;
                  }
                }
              }
              print("Sizning balansingiz $balanse so'm");
              break;
            case "4":
              String namecard =
                  io.inpudText("qaysi kartangizdan junatmoqchisiz  ");

              String kartanumber = io.inpudText(
                  "kimga junatmoqchi bulgan odamni karta raqamini kiriting ");
              int pul = io.inpudNumber("nechpul junatmoqchisiz ");

              for (Card e in bazacards) {
                if (e.number == namecard) {
                  if (e.balance > pul) {
                    e.balance -= pul;
                  }

                  break;
                }
              }
              for (Card e in bazacards) {
                if (e.number == kartanumber) {
                  e.balance += pul;
                  break;
                }
              }

              break;

            case "0":
              print("ortga🔻");
              builder();
              return;
          }
        }
      }
    } else {
      print("Ruyhatdan utasizimi😎");

      String str = io.inpudText("1.ha\n2.yuq\n--> ");
      switch (str) {
        case "1":
          String number = "";
          String password = "";
          bool j = false;
          while (j != true) {
            if (number.isEmpty) {
              number = io.inpudText("number kiriting: ");
              j = false;
            }
            if (password.isEmpty) {
              password = io.inpudText("pasword kiriting: ");
              j = false;
            }
            if (number.isNotEmpty && password.isNotEmpty) {
              j = true;
              print("kontaktga qushildi ✅");
              User newuser =
                  User(number: number, password: password, cards: []);
              dataBase.addEntries([MapEntry(newuser.number, newuser.password)]);
              print(dataBase);
              return;
            }
          }
          break;
        case "2":
          print("ortga qaytdik");
          break;
        default:
          return;
      }
    }
  }
}
