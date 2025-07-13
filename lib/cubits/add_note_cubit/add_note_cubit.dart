import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = Color(0xffbeb7a4);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddnoteLoaded());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddnoteSuccess());
    } catch (e) {
      emit(AddnoteFailer(e.toString()));
    }
  }
}
