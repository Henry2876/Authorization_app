import 'package:authorization_app/utils/size_text.dart';
import 'package:authorization_app/utils/style_text.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';

class TitleEmailWidget extends StatelessWidget {
  const TitleEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: sizeText_45,
        child: Text(
          subtitleEmail,
          style: styleSubtitle,
        ));
  }
}
