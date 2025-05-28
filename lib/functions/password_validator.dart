import 'package:authorization_app/utils/title.dart';

class PasswordValidator {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return subtitleEnterPassword;
    }
    if (!RegExp(subtitleFormatPassword)
        .hasMatch(value)) {
      return subtitleInvalidPassword;
    }
    return null;
  }
}