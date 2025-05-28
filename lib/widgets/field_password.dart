import 'package:authorization_app/functions/password_validator.dart';
import 'package:authorization_app/utils/icons.dart';
import 'package:authorization_app/utils/size_field.dart';
import 'package:flutter/material.dart';
import '../utils/colors_field.dart';

class FieldPasswordWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onChanged;

  const FieldPasswordWidget({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeField_42,
      width: sizeField_288,
      child: TextFormField(
        obscureText: true,
        controller: controller,
        decoration: InputDecoration(
          label: iconPasswordField,
          filled: true,
          fillColor: colorFieldLightGrey,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sizeField_10),
            borderSide:
                const BorderSide(color: colorFieldGreen, width: sizeField_1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sizeField_10),
            borderSide:
                const BorderSide(color: colorFieldWhite, width: sizeField_1),
          ),
        ),
        validator: (value) => PasswordValidator.validate(value),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChanged,
      ),
    );
  }
}
