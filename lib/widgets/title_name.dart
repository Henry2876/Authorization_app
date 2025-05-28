import 'package:authorization_app/utils/size_text.dart';
import 'package:authorization_app/utils/style_text.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';

class TitleNameWidget extends StatelessWidget {
  const TitleNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: sizeText_50,
        child: Text(
          subtitleName,
          style: styleSubtitle,
        ));
  }
}
