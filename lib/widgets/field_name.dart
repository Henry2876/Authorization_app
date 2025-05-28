import 'package:authorization_app/functions/name_validator.dart';
import 'package:authorization_app/utils/colors_field.dart';
import 'package:authorization_app/utils/icons.dart';
import 'package:authorization_app/utils/size_field.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';

class FieldNameWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onChanged;

  const FieldNameWidget({
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
        controller: controller,
        decoration: InputDecoration(
          label: iconNameField,
          filled: true,
          fillColor: colorFieldLightGrey,
          hintText: subtitleFieldName,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sizeField_10),
            borderSide:
                const BorderSide(color: colorFieldGreen, width: sizeField_1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(color: colorFieldWhite, width: sizeField_1),
          ),
        ),
        validator: (value) => NameValidator.validate(value),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChanged,
      ),
    );
  }
}
