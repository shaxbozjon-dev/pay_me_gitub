import 'dart:io';

IoServise io = IoServise(); // input output uchun obyekt
Taymer ty = Taymer(); //taymer uchun obyekt

/// Dasturlashda o'zgaruvchi va methodlarga nom tanlashga e'tiborli bo'ling!!!
/// Masalan hozir siz berilgan satrni ekranga chiqaradigan metodga inputText() dib
/// nom beribsiz. Bu xato!!! Chunki input kiritish yoki kirish digani. Siz bu
/// metodga yoki outputText() yoki consoleOut() yoki log() dib nom bersez, sizzi
/// kodizzi ko'rgan odam nima qiganizzi chunadi, ya'ni siz ma'lum bir narsani
/// ekranga chiqarmoqchiligizzi chunadi. lekin inputText() ni ko'rsa bu demak
/// nimadir foydalanuvchidan so'ravotti dib o'yliydi

class IoServise {
  void _console(String str) {
    //?textni shaklida olib beradi
    stdout.write(str);
  }

  String inpudText(String str) {
    _console(str); //?text olib beryabdi
    return stdin.readLineSync() ?? ""; //tekst va str kitishni suraydi
  }

  int inpudNumber(String str) {
    _console(str);
    return int.tryParse(stdin.readLineSync() ?? "") ?? -1;
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

///Ushbu klas parametriga olgan String qiymatini konsolning o'rtasiga chiqaradi
class Center {
  String message;
  Center({required this.message}) {
    message = " $message ";
    _printMessage();
  }

  _printMessage() {
    // bu orqali biz konsoldagi ustunlar sonini topa olamiz
    final int space = (stdout.terminalColumns - message.length) ~/ 2;
    message = message.padLeft(message.length + space, "*");
    print("${message.padRight(message.length + space, "*")}\n");
  }
}
