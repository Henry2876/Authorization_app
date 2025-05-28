import 'package:authorization_app/utils/colors_field.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';
import '../utils/style_text.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorFieldGreen,
        title: const Text(titleApplicationScreen),
        centerTitle: true,
        titleTextStyle: styleTitleWhite,
      ),
      body: const Center(
        child: Text(
          subtitleApplicationScreen,
          style: styleTitleGreen,
        ),
      ),
    );
  }
}
