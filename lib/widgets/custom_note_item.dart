import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/edite_note_view_body.dart';

import '../views/edite_note_view.dart';

class NoteItems extends StatefulWidget {
  const NoteItems({super.key, required this.note});
  final NoteModel note;

  @override
  State<NoteItems> createState() => _NoteItemsState();
}

class _NoteItemsState extends State<NoteItems> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditeNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(widget.note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                widget.note.title,
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  widget.note.subtitle,
                  style: TextStyle(color: Colors.black.withAlpha(100)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  widget.note.delete();
                  setState(() {});
                },
                color: Colors.black,
                icon: Icon(FontAwesomeIcons.trash, size: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                widget.note.date,
                style: TextStyle(
                  color: Colors.black.withAlpha(100),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
