import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/appbar.dart';

import 'NotesListview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          CustomeAppBar(
            title: 'Notes',icon: Icons.search,w: 207,
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
