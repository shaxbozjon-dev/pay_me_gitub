import '../pages/builder.dart';
import '../services/io_servise.dart';
import '../auth/sign_in.dart';
import '../auth/sign_up.dart';

class IntroPage extends Builder {
  @override
  void builder() {
    super.builder();
    print(
        "\t\t*****************Payme_dasturiga_xush_kelibsiz!************************\n");
    String command = io.inpudText("1. SignIn\n"
        "2. SignUp\n"
        "0. Exit\n"
        "Command: ");
    //  ty.taymer("Typing is", 1);
    switch (command) {
      case "1":
        SignIn();
        break;
      case "2":
        SignUp();
        break;
      case "0":
        return;
      default:
        print("Command not found!");
        builder();
    }
  }
}
