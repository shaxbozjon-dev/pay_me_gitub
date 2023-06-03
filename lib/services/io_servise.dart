import 'dart:io';

IoServise io = IoServise(); // input output uchun
Taymer ty = Taymer(); // taymer uchun

class IoServise {
  void _console(String str) {
    stdout.write(str);
  }

  String inputText(String str) {
    _console(str);
    return stdin.readLineSync() ?? "";
  }

  int inputNumber(String str) {
    _console(str);
    return int.tryParse(stdin.readLineSync() ?? "") ?? -1;
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
