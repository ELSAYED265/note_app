part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

//
// class noteSuccess extends NotesState {
//   List<NoteModel> notes;
//   noteSuccess(this.notes);
// }
