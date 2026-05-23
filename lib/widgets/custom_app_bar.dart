import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        
        children: [
          Text(
            text, 
            style: TextStyle(fontSize: 26,),
            ),
          Spacer(flex: 1,),
          CustomIcon(
            icon: icon,
          ),
        ],
      ),
    );
  }
}

