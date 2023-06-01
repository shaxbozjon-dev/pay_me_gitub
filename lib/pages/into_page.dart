import '../pages/builder.dart';
import '../services/io_servise.dart';
import '../menu/menu_1.dart';
import 'dart:io';

IntroPage intro = IntroPage();

Taymer ty = Taymer();

class IntroPage extends Builder {
  @override
  void builder1() {
    super.builder();

    while (true) {
      print(
          "\t\t*****************Payme_dasturiga_xush_kelibsiz!************************\n");
      String command = io.inpudText("1. Boshlash\n"
          "0. Exit\n"
          "Command: ");
      ty.taymer("Typing is", 1);
      switch (command) {
        case "1":
          menu2();
          break;
        case "0":
          return;
        default:
          print("Command not found!");
          builder1();
      }
    }
  }
}

class Taymer {
  void taymer(String text, int second) {
    for (int i = second; i >= 0; i--) {
      print("\x1B[2J\x1B[0;0H");
      print(" $text $i...");
      sleep(Duration(seconds: 1));
    }
  }
}
