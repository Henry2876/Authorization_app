import 'package:authorization_app/functions/password_validator.dart';
import 'package:authorization_app/utils/images.dart';
import 'package:authorization_app/utils/size_indent.dart';
import 'package:authorization_app/utils/style_text.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:authorization_app/widgets/field_email.dart';
import 'package:authorization_app/widgets/field_password.dart';
import 'package:authorization_app/widgets/main_button.dart';
import 'package:flutter/material.dart';
import '../utils/colors_button.dart';
import '../utils/size.dart';
import 'email_validator.dart';

void showLoginDialog(BuildContext context, String platform) {
  Widget imageIcon = platformImages[platform] ?? imageDefault;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool emailValid = false;
  bool passwordValid = false;

  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    '$subtitleDialog$platform',
                    style: styleSubtitleGreen,
                    textAlign: TextAlign.center,
                  ),
                ),
                imageIcon,
              ],
            ),
            content: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FieldEmailWidget(
                    controller: emailController,
                    onChanged: (value) {
                      setState(() {
                        emailValid = EmailValidator.validate(value) == null;
                      });
                    },
                  ),
                  const SizedBox(height: sizeIndent_10),
                  FieldPasswordWidget(
                    controller: passwordController,
                    onChanged: (value) {
                      setState(() {
                        passwordValid =
                            PasswordValidator.validate(value) == null;
                      });
                    },
                  ),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorButtonRed,
                  foregroundColor: colorButtonWhite,
                  padding: const EdgeInsets.symmetric(
                      horizontal: size_20, vertical: size_11),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(size_10)),
                ),
                child: const Text(subtitleDialogCancel),
              ),
              const SizedBox(width: sizeIndent_10),
              MainButtonWidget(enabled: emailValid && passwordValid,),
            ],
          );
        },
      );
    },
  );
}
