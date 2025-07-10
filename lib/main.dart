import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesView(),
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
    );
  }
}
