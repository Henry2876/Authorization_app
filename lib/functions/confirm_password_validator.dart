import 'package:authorization_app/utils/title.dart';

class ConfirmPasswordValidator {
  static String? validate(String? value, String password) {
    if (value == null || value.isEmpty) {
      return subtitleEnterPassword;
    }
    if (value != password) {
      return subtitleNotPassword;
    }
    return null;
  }
}