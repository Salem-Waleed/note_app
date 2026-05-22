import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_home_view.dart';
import 'package:note_app/widgets/show_modal_bottom_sheet.dart';

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
              return const ShowBottomSheet(

              );
             },
             );
        },
        backgroundColor: Color(0xff00f1d7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.add,color: Colors.black,),
      ),
      body: const CustomNoteHomeView(),
    );
  }
}

