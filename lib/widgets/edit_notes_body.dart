import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
          children: [
             SizedBox(height: 30),
            CustomAppBar(
              text: 'Edit Note',
               icon: Icons.check
               ),
                SizedBox(
            height: 16,
          ),
        
               CustomTextField(
                hint: 'Title',
                ),
                 SizedBox(height: 16),
                CustomTextField(
                hint: 'Content',
                maxLine: 5,
                ),
          ],
        ),
    );
  }
}