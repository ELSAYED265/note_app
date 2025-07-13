part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class AddnoteLoaded extends NotesState {}

class AddnoteSuccess extends NotesState {
  List<NoteModel> notes;
  AddnoteSuccess(this.notes);
}

class AddnoteFailer extends NotesState {
  final String errMassage;
  AddnoteFailer(this.errMassage);
}
