part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

class AddnoteLoaded extends AddNoteState {}

class AddnoteSuccess extends AddNoteState {}

class AddnoteFailer extends AddNoteState {
  final String errMassage;
  AddnoteFailer(this.errMassage);
}
