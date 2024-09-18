import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

class NotesInitialState extends NotesState {}

class NotesLoadedState extends NotesState {
  final List<Note> list;

  NotesLoadedState(this.list);
}
