import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/note_home_view.dart';
import 'package:note_app/widgets/add_bottom_modal_sheet.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
             builder: (context){
              return const AddBottomModalSheet();
             },
             );
        },
        backgroundColor:kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.add,color: Colors.black,),
      ),
      body: const CustomNoteHomeView(),
    );
  }
}

