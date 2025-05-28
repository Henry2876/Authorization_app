import 'package:authorization_app/utils/title.dart';

class EmailValidator {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return subtitleEnterEmail;
    }
    if (!RegExp(subtitleFormatEmail)
        .hasMatch(value)) {
      return subtitleInvalidFEmail;
    }
    return null;
  }
}