import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.MaxLine = 1,
    this.onsave,
    this.onChanged,
  });
  final String hintText;
  final int MaxLine;
  final void Function(String?)? onsave;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onsave,
      cursorColor: kPrimaryColor,
      maxLines: MaxLine,
      validator: (val) {
        if (val?.isEmpty ?? true) {
          return "is feild are required";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
