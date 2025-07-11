import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.onTap, this.isloaded = false});
  final void Function()? onTap;
  final bool isloaded;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width, //double.infinite سعات بتضرب
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isloaded == true
              ? CircularProgressIndicator(color: Colors.black)
              : Text(
                  "Add",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
        ),
      ),
    );
  }
}
