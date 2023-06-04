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
  void _console(String str) {//?textni shaklida olib beradi
    stdout.write(str);
  }



  String inpudText(String str) {
    // buniyam
    _console(str);//?text olib beryabdi 
    return stdin.readLineSync()??"";//tekst va str kitishni suraydi
  }



  int inpudNumber(String str) {
    //input bo'lishi kerak
    _console(str);
    return int.tryParse(stdin.readLineSync() ?? "")?? -1; // agar foydalanuvchi satr kiritsa portliydiku
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