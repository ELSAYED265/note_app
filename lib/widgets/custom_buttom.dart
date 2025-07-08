import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, //double.infinite سعات بتضرب
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text("Add", style: TextStyle(color: Colors.black, fontSize: 24)),
      ),
    );
  }
}
