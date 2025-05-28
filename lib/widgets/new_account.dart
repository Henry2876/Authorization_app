import 'package:authorization_app/utils/size.dart';
import 'package:authorization_app/utils/style_text.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';
import '../sсreens/sign_up_screen.dart';

class NewAccountWidget extends StatelessWidget {
  const NewAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(subtitleQuestionSignInScreen,
            style:styleSubtitle),
        const SizedBox(width: size_5),
        InkWell(
            onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignUpScreen())),
            child: const Text(
              subtitleRegistration,
              style: styleSubtitleGreen,
            ))
      ],
    );
  }
}
