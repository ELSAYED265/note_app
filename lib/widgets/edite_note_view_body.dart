import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_appBer.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditeNoteViewBody extends StatefulWidget {
  const EditeNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNoteViewBody> createState() => _EditeNoteViewBodyState();
}

class _EditeNoteViewBodyState extends State<EditeNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 24),
        child: Column(
          children: [
            CustomAppber(
              text: "Edit Note",
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('تم الحفظ بنجاح!')));
                Navigator.pop(context);
                BlocProvider.of<NotesCubit>(context).fetchALlNotes();
              },
            ),
            SizedBox(height: 30),
            CustomTextField(
              hintText: widget.note.title,
              onChanged: (val) {
                title = val;
              },
            ),
            SizedBox(height: 10),
            CustomTextField(
              hintText: widget.note.subtitle,
              MaxLine: 5,
              onChanged: (val) {
                content = val;
              },
            ),
          ],
        ),
      ),
    );
  }
}
