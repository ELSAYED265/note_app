import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});
  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  static int? color;
  int currenIndex = 0;
  List<Color> colors = [
    Color(0xffbeb7a4),
    Color(0xff3D348B),
    Color(0xffE0E2DB),
    Color(0xffE6AF2E),
    Color(0xffD5591B),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currenIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              setState(() {});
            },
            child: ColorItem(
              isActive: currenIndex == index,
              color: colors[index],
            ),
          );
        },
        itemCount: colors.length,
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: isActive
          ? CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 34, backgroundColor: color),
            )
          : CircleAvatar(radius: 38, backgroundColor: color),
    );
  }
}
