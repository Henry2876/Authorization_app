import 'package:authorization_app/utils/colors_field.dart';
import 'package:authorization_app/utils/size.dart';
import 'package:authorization_app/utils/style_text.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';
import '../sсreens/policy_screen.dart';

class TermsCheckboxWidget extends StatefulWidget {
  final ValueChanged<bool> onChanged;

  const TermsCheckboxWidget({super.key, required this.onChanged});

  @override
  _TermsCheckboxWidgetState createState() => _TermsCheckboxWidgetState();
}

class _TermsCheckboxWidgetState extends State<TermsCheckboxWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value!;
            });
            widget.onChanged(value!);
          },
          activeColor: colorFieldWhite,
          checkColor: colorFieldGreen,
          side: const BorderSide(color: colorFieldGreen, width: size_2),
        ),
        const Text(subtitleFirstPolicy),
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PrivacyPolicyScreen()),
          ),
          child: const Text(
            subtitleSecondPolicy,
            style: styleSubtitleGreen,
          ),
        )
      ],
    );
  }
}
