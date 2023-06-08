import 'dart:io';

IoServise io = IoServise(); // input output uchun
Taymer ty = Taymer(); // taymer uchun

class IoServise {
  void _console(String text) {
    stdout.write(text);
  }

  String inputText(String text) {
    _console(text);
    return stdin.readLineSync() ?? "";
  }

  int inputNumber(String text) {
    _console(text);
    return int.tryParse(stdin.readLineSync() ?? "") ?? -1;
  }

  String setPassword(String text) {
    String password;
    bool isNotCorrect;
    do {
      isNotCorrect = false;
      password = inputText(text);
      io.clr();
      if (password == "0") return "0";
      if (password.length < 8) {
        print("Parol kamida 8 ta belgidan iborat bo'lishi kerak.");
        isNotCorrect = true;
      }
      if (!password.contains(RegExp(r"[A-Z]"))) {
        print("Parolda kamida bitta katta harf bo'lishi kerak.");
        isNotCorrect = true;
      }
      if (!password.contains(RegExp(r"[a-z]"))) {
        print("Parolda kamida bitta kichik harf bo'lishi kerak.");
        isNotCorrect = true;
      }
      if (!password.contains(RegExp(r"[\d]"))) {
        print("Parolda kamida bitta raqam bo'lishi kerak.");
        isNotCorrect = true;
      }
      if (!password.contains(RegExp(r"[^A-z\d ]"))) {
        print("Parolda kamida bitta maxsus belgi bo'lishi kerak.");
        isNotCorrect = true;
      }
    } while (isNotCorrect);
    return password;
  }

  void clr() => print("\x1B[2J\x1B[0;0H");
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

class Center {
  final String _message;
  Center({required String message}) : _message = "| $message |" {
    builder();
  }

  void builder() {
    int space = (stdout.terminalColumns - _message.length) ~/ 2;
    print("${_message.padLeft(_message.length + space)}\n");
  }
}
