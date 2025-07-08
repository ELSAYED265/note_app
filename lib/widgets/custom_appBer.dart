import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppber extends StatelessWidget {
  const CustomAppber({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}
