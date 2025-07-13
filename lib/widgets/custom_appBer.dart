import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppber extends StatelessWidget {
  const CustomAppber({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });
  final String text;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomIcon(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
