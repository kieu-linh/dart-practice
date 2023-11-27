import 'dart:io';

class Validator {
  //function check valid String input
  static String getString(String prompt) {
    String value;
    do {
      stdout.write(prompt);
      value = stdin.readLineSync().toString().trim();
    } while (value.isEmpty);
    return value;
  }

  //function check valid int input
  static int getInt(String prompt) {
    int value = 0;
    bool isValid = false;
    do {
      try {
        stdout.write(prompt);
        value = int.parse(stdin.readLineSync().toString().trim());
        isValid = true;
      } on FormatException {
        stdout.write('Invalid input. Please enter a number: ');
      }
    } while (!isValid);
    return value;
  }

  //function check valid double input
  static double getDouble(String prompt) {
    double value = 0.0;
    bool isValid = false;
    do {
      try {
        stdout.write(prompt);
        value = double.parse(stdin.readLineSync().toString().trim());
        isValid = true;
      } on FormatException {
        stdout.write('Invalid input. Please enter a number: ');
      }
    } while (!isValid);
    return value;
  }

  //function check valid email input
  static bool emailIsValid(String email) {
    String emailPattern =
        r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$";
    return RegExp(emailPattern).hasMatch(email);
  }
}
