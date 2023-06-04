import 'dart:io';

import '../menu/menu_1.dart';
import '../pages/builder.dart';
import '../services/io_servise.dart';

IntroPage intro = IntroPage();

Taymer ty = Taymer();

class IntroPage extends Builder {
  @override
  void builder() {
    // ! bu joyda override qilingan divossiz lekin builderni nomini builder1 qilib o'zgartiribsiz!? nimaga?
    super.builder();// builser chaqirsak joy tashab beradi

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
          builder();
      }
    }
  }
}
