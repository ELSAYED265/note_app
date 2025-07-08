import 'package:flutter/material.dart';

import 'custom_appBer.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [SizedBox(height: 50), CustomAppber()]),
    );
  }
}
