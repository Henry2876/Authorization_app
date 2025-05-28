import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';
import '../utils/size_text.dart';
import '../utils/style_text.dart';

class MainTitleSignIn extends StatelessWidget {
  const MainTitleSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: sizeText_289,
        child: Text(
          titleSignInScreen,
          style: styleTitle,
        ));
  }
}