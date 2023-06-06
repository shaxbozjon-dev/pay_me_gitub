// import '../menu/menu_1.dart';
import '../menu/menu_1.dart';
import '../pages/builder.dart';
import '../services/io_servise.dart';

class IntroPage extends Builder {
  String errorMessage = "";
  @override
  void builder() {
    super.builder(); // builser chaqirsak joy tashab beradi

    while (true) {
      Center(message: "Payme dasturiga hush kelibsiz!");
      String command = io.inpudText("1. Boshlash\n"
          "0. Exit\n"
          "$errorMessage\n"
          "Command: ");

      switch (command) {
        case "1":
          Menu(); //Menu page ga o'tish
          return;
        case "0":
          return;
        default:
          errorMessage = "Command not found!";
          builder();
          return;
      }
    }
  }
}
