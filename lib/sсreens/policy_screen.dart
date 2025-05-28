import 'package:authorization_app/utils/colors_field.dart';
import 'package:authorization_app/utils/size.dart';
import 'package:authorization_app/utils/size_indent.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';
import '../utils/style_text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorFieldGreen,
        title: const Text(titlePolicy),
        centerTitle: true,
        titleTextStyle: styleTitleWhite,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(size_16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titlePolicy,
              style: styleTitleGreen,
            ),
            SizedBox(height: sizeIndent_10),
            Text(textPolicy,
              style: styleSubtitle, // Ensure a readable text style
            ),
          ],
        ),
      ),
    );
  }
}