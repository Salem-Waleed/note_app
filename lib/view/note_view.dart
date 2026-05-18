import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_home_view.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff00f1d7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.add,color: Colors.black,),
      ),
      body: const CustomHomeView(),
    );
  }
}
