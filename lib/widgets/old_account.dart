import 'package:authorization_app/utils/size.dart';
import 'package:authorization_app/utils/style_text.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';
import '../sсreens/sign_in_screen.dart';

class OldAccountWidget extends StatelessWidget {
  const OldAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(subtitleQuestionSignUpScreen,
            style:styleSubtitle),
        const SizedBox(width: size_5),
        InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignInScreen())),
            child: const Text(
              subtitleLogin,
              style: styleSubtitleGreen,
            ))
      ],
    );
  }
}
