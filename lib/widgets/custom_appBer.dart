import 'package:flutter/material.dart';

class CustomAppber extends StatelessWidget {
  const CustomAppber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes", style: TextStyle(fontSize: 28)),
        CustomAppber(),
      ],
    );
  }
}
