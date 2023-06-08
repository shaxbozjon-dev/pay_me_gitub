import '../pages/builder.dart';
import '../services/io_servise.dart';
import 'menu_page.dart';

class IntroPage extends Builder {
  String errorMessage = "";
  @override
  void builder() {
    super.builder();
    Center(message: "Payme dasturiga xush kelibsiz!");

    String command = io.inputText("1. Boshlash\n"
        "0. Chiqish(default)\n"
        "$errorMessage\n"
        ">>> ");
    switch (command) {
      case "1":
        Menu();
        break;
      case "0" || "":
        return;
      default:
        errorMessage = "Noto'g'ri buyruq kiritildi...";
        builder();
    }
  }
}
