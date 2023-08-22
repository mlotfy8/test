import 'package:flutter/material.dart';

import '../widgets/AddNote.dart';
import '../widgets/notes view body.dart';

class Notes_View extends StatefulWidget {
  const Notes_View({super.key});

  @override
  State<Notes_View> createState() => _Notes_ViewState();
}

class _Notes_ViewState extends State<Notes_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
              context: context,
              builder: (context) {
                return AddNoteForm();
              });
        },
        child: Icon(
          Icons.add,
          size: 25,
        ),
      ),
      body: SafeArea(child: NotesViewBody()),
    );
  }
}
