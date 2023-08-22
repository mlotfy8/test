import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Add%20Note_Cubit/add_note_cubit.dart';
import 'package:notes_app/models/Note%20Model.dart';
import 'package:notes_app/widgets/text%20field.dart';

import 'CustomeButton.dart';

class Forma extends StatefulWidget {
  const Forma({super.key});

  @override
  State<Forma> createState() => _FormaState();
}

class _FormaState extends State<Forma> {
  GlobalKey<FormState> formkey = GlobalKey();
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
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
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomeButton(
                  isloading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var noteModel = Note_Model(
                          title: title!,
                          content: content!,
                          date: DateTime.now().toString(),
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context)
                          .addNotes(noteModel);
                    }
                    print('=========================$title');
                  },
                );
              },
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
