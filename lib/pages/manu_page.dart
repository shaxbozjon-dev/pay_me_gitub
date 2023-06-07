import '../services/io_servise.dart';
import 'builder.dart';

class Menu extends Builder {
  String errorMessage = "";
  @override
  void builder() {
    super.builder();
    Center(message: "Menu");

    int number = io.inputNumber("$errorMessage"
        "Raqamingizni kiriting(0 => chiqish): ");

    if (number < 0) {
      errorMessage = "Raqam noto'g'ri formatda kiritildi...";
      builder();
      return;
    } else if (number == 0) {
      return;
    }
  }
}
