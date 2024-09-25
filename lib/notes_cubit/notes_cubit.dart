import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/note_model.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());

  void addNote(String title, String content) {
    final newNote =
        Note(title: title, content: content, createdAt: DateTime.now());

    if (state is NotesInitialState) {
      emit(NotesLoadedState([newNote]));
    } else {
      emit(NotesLoadedState([...(state as NotesLoadedState).list, newNote]));
    }
  }

  void removeNote(int index) {
    final List<Note> updatedNotes = List.from((state as NotesLoadedState).list)
      ..removeAt(index);
    if (updatedNotes.isEmpty) {
      emit(NotesInitialState());
    } else {
      emit(NotesLoadedState(updatedNotes));
    }
  }
}
