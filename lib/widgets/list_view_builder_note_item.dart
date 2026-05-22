
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class CustomListViewNoteItem extends StatelessWidget {
  const CustomListViewNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding:EdgeInsets.zero,
        itemBuilder: (context,index){
        return const CustomNoteItem();
      }),
    );
  }
}