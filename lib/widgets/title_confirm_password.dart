import 'package:authorization_app/utils/size_text.dart';
import 'package:authorization_app/utils/style_text.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';

class TitleConfirmPasswordWidget extends StatelessWidget {
  const TitleConfirmPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: sizeText_153,
      child: Text(
        subtitleConfirmPassword,
        style: styleSubtitle,
      ),
    );
  }
}
