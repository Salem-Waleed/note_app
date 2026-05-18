import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_home_view.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:CustomHomeView(),
    );
  }
}


