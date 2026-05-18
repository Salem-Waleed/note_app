import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/list_view_builder_note_item.dart';

class CustomHomeView extends StatelessWidget {
  const CustomHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const[
          SizedBox(height: 30),
          CustomAppBar(),
          Expanded(child: CustomListViewNoteItem()),
        ],
      ),
    );
  }
}



