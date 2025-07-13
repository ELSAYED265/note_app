part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class noteLoaded extends NotesState {}

class noteSuccess extends NotesState {
  List<NoteModel> notes;
  noteSuccess(this.notes);
}

class noteFailer extends NotesState {
  final String errMassage;
  noteFailer(this.errMassage);
}
