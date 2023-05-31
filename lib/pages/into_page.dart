import '../pages/builder.dart';
import '../services/io_servise.dart';
import '../menu/menu_1.dart';

IntroPage intro = IntroPage();
Menu menu1 = Menu();

class IntroPage extends Builder {
  @override
  void builder1() {
    super.builder();
    print(
        "\t\t*****************Payme_dasturiga_xush_kelibsiz!************************\n");
    String command = io.inpudText("1. Kirish\n"
        "0. Exit\n"
        "Command: ");
    //  ty.taymer("Typing is", 1);
    switch (command) {
      case "1":
        menu1.menu2();
        break;
      case "0":
        return;
      default:
        print("Command not found!");
        builder1();
    }
  }
}
