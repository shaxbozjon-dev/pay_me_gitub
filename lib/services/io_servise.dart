import 'dart:io';

IoServise io = IoServise();

/// Dasturlashda o'zgaruvchi va methodlarga nom tanlashga e'tiborli bo'ling!!!
/// Masalan hozir siz berilgan satrni ekranga chiqaradigan metodga inputText() dib
/// nom beribsiz. Bu xato!!! Chunki input kiritish yoki kirish digani. Siz bu
/// metodga yoki outputText() yoki consoleOut() yoki log() dib nom bersez, sizzi
/// kodizzi ko'rgan odam nima qiganizzi chunadi, ya'ni siz ma'lum bir narsani
/// ekranga chiqarmoqchiligizzi chunadi. lekin inputText() ni ko'rsa bu demak
/// nimadir foydalanuvchidan so'ravotti dib o'yliydi

class IoServise {
  void inputText(String str) {
    //Nomini o'zgartirin
    stdout.write(str);
  }

  void inputTextPas(String str) {
    //Buniyam. Masalan: outputLineText(), lineOutput()
    stdout.writeln(str);
  }

  String inpudText(String str) {
    // buniyam
    inputText(str);
    return stdin.readLineSync()!;
  }

  String inpudTextPas(String str) {
    //buniyam
    inputTextPas(str);
    return stdin.readLineSync()!;
  }

  int inpudNumber(String a) {
    //input bo'lishi kerak
    inputText(a);
    return int.parse(
        stdin.readLineSync()!); // agar foydalanuvchi satr kiritsa portliydiku
  }
}
