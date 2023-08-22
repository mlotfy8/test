import 'package:flutter/cupertino.dart';

import 'custome note item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => NoteItem(),
      itemCount: 20,
    );
  }
}
