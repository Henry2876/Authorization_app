import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';
import '../utils/size_text.dart';
import '../utils/style_text.dart';

class MainTitleSignUp extends StatelessWidget {
  const MainTitleSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: sizeText_290,
        child: Text(
          titleSignUpScreen,
          style: styleTitle,
        ));
  }
}