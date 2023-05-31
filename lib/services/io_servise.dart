import 'dart:io';

//IO service yozin yoki eskisini copy qilin
IoServise io = IoServise();

class IoServise {
  void inputText(String str) {
    stdout.write(str);
  }

  String inpudText(String str) {
    inputText(str);
    return stdin.readLineSync()!;
  }

  int inpudNumber(String a) {
    inputText(a);
    return int.parse(stdin.readLineSync()!);
  }
}
