import 'package:pay_me_gitub/pages/builder.dart';
import 'package:pay_me_gitub/pages/into_page.dart';
import 'package:pay_me_gitub/services/io_servise.dart';

class MainPage extends Builder {
  String errorMessage = "";
  @override
  void builder() {
    super.builder();
    Center(message: "Asosiy sahifa");

    String command = io.inputText(
      "1. Karta bo'limi \n"
      "2. Joriy hisobni bilish \n"
      "3. Pul o'tkazish \n"
      "4. Hisobni to'ldirish \n"
      "5. Hisobdan chiqish \n"
      "6. To'lovlar \n"
      "$errorMessage \n"
      ">>> ",
    );

    switch (command) {
      case "1":
      // TODO: CardsPage();
      case "2":
      // TODO: CurrentBalance();
      case "3":
      // TODO: TransferPage();
      case "4":
      // TODO: AddBalance();
      case "5":
        IntroPage();
      case "6":
      // TODO: PayTo();
      default:
        errorMessage = "Buyruq xato kiritildi...";
        builder();
    }
  }
}
