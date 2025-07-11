import 'package:flutter/material.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formkey = GlobalKey();
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(
            hintText: "Title",
            onsave: (val) {
              title = val;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: "content",
            MaxLine: 5,
            onsave: (val) {
              subTitle = val;
            },
          ),
          SizedBox(height: 50),
          CustomButtom(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
