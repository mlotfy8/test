import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/text%20field.dart';

import 'CustomeButton.dart';

class Forma extends StatefulWidget {
  const Forma({super.key});

  @override
  State<Forma> createState() => _FormaState();
}

class _FormaState extends State<Forma> {
GlobalKey<FormState> formkey=GlobalKey();
String?title,content;
  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
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
    );
  }
}

