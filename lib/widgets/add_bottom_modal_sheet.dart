import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddBottomModalSheet extends StatelessWidget {
  const AddBottomModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children:const [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
        
          CustomTextField(
            hint: 'content',
            maxLine: 5,
            ),
            SizedBox(
            height: 30,
          ),
            CustomBottom(),
            SizedBox(
            height: 30,
          ),
        ]
        
        ),
      ),
    );
  }
}