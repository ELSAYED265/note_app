import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_buttom.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hintText: "Title"),
            SizedBox(height: 16),
            CustomTextField(hintText: "content", MaxLine: 5),
            SizedBox(height: 50),
            CustomButtom(),
          ],
        ),
      ),
    );
  }
}
