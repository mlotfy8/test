import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Add%20Note_Cubit/add_note_cubit.dart';
import 'package:notes_app/Simble%20observer.dart';
import 'Views/notes_view.dart';
import 'models/Note Model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer=Simple();
  await Hive.initFlutter();
  await Hive.openBox('Notes_Box');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        home: Notes_View(),
      ),
    );
  }
}
