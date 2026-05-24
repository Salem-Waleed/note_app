import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';


class AddBottomModalSheet extends StatelessWidget {
  const AddBottomModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteBotton(),
      ),
    );
  }
}

class AddNoteBotton extends StatefulWidget {
  const AddNoteBotton({
    super.key,
  });

  @override
  State<AddNoteBotton> createState() => _AddNoteBottonState();
}

class _AddNoteBottonState extends State<AddNoteBotton> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
        const SizedBox(
          height: 32,
        ),
        CustomTextField(
          hint: 'Title',
          onSaved: (value){
            title = value;
          },
        ),
        const SizedBox(
          height: 16,
        ),
      
        CustomTextField(
          hint: 'content',
          maxLine: 5,
          onSaved: (value){
            subTitle = value;
          },
          ),
          SizedBox(
          height: 30,
        ),
          CustomBottom(
            onTap: (){
              if(formKey.currentState!.validate()){
               formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(
          height: 30,
        ),
      ]
      
      ),
    );
  }
}