import 'package:authorization_app/utils/style_text.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';

class TitleOptionSingInWidget extends StatelessWidget {
  const TitleOptionSingInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      subtitleAnotherAccount,
      style: styleSubtitle,
    );
  }
}
