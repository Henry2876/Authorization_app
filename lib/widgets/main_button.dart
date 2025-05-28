import 'package:authorization_app/utils/colors_button.dart';
import 'package:authorization_app/utils/seconds.dart';
import 'package:authorization_app/utils/size.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';
import '../sсreens/application_screen.dart';

class MainButtonWidget extends StatefulWidget {
  final bool enabled;
  const MainButtonWidget({super.key, required this.enabled});

  @override
  _MainButtonWidgetState createState() => _MainButtonWidgetState();
}

class _MainButtonWidgetState extends State<MainButtonWidget> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.enabled && !_isLoading ? _handleSignIn : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorButtonGreen,
        foregroundColor: colorButtonWhite,
        padding: const EdgeInsets.symmetric(horizontal: size_57, vertical: size_11),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size_10)),
      ),
      child: _isLoading
          ? const SizedBox(
              height: size_15,
              width: size_15,
              child: CircularProgressIndicator(
                color: colorButtonWhite,
                backgroundColor: colorButtonGreen,
                strokeWidth: size_2,
              ))
          : const Text(subtitleLogin),
    );
  }

  void _handleSignIn() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: second_2), () {
      setState(() {
        _isLoading = false;
      });

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AppScreen()),
      );
    });
  }
}
