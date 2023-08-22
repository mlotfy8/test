import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/text%20field.dart';

import 'CustomeButton.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 15.0, left: 10, right: 10, bottom: 20),
        child: AddNoteForm());
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, content;
   GlobalKey<FormState> formkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            TextFeild(
              onsave: (value) {
                title = value;
              },
              hint: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            TextFeild(
              onsave: (value) {
                content = value;
              },
              hint: 'Content',
              maxline: 5,
            ),
            SizedBox(
              height: 30,
            ),
            CustomeButton(onTap: (){
              if(formkey.currentState!.validate())
                {
                  formkey.currentState!.save();
                }
              print('=========================$title');

            },),
          ],
        ),
      ),
    );
  }
}
