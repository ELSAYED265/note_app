import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appBer.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 24),
        child: Column(
          children: [
            CustomAppber(text: "Edit Note", icon: Icons.check),
            SizedBox(height: 30),
            CustomTextField(hintText: "title"),
            SizedBox(height: 10),
            CustomTextField(hintText: "content", MaxLine: 5),
          ],
        ),
      ),
    );
  }
}
