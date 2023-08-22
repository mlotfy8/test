import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('Notes_Box');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Notes_View(),
    );
  }
}
