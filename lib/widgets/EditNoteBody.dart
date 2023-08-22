import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search%20icon.dart';
import 'package:notes_app/widgets/text%20field.dart';

import 'appbar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 15),
        child: Column(
          children: [
            CustomeAppBar(
              title: 'Edit Note',
              w: 170,
              icon: Icons.check,
            ),SizedBox(height: 20,),
            TextFeild(
              hint: 'Title',
            ),SizedBox(height: 20,),
            TextFeild(
              hint: 'Content',maxline: 5,
            )
          ],
        ),
      ),
    );
  }
}
