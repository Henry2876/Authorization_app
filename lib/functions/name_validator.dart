import 'package:authorization_app/utils/title.dart';

class NameValidator {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return subtitleEnterName;
    }
    return null;
  }
}