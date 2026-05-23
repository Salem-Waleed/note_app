import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: const Row(
        
        children: [
          Text('Note', style: TextStyle(fontSize: 28)),
          Spacer(flex: 1,),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}

