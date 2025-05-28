import 'package:flutter/material.dart';

class AlignLeft extends StatelessWidget {
  final Widget childWidget;

  const AlignLeft({
    required this.childWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: childWidget,
    );
  }
}
