import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'note_app.dart';
import 'notes_cubit/notes_cubit.dart';

void main() => runApp(MaterialApp(
      home:  BlocProvider(
        create: (BuildContext context)=> NotesCubit(),
        child: NoteAppWithStateManagement(),
      ),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    ));
