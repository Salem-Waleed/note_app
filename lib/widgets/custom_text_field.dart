import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine = 1});
final String hint;
final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      decoration: InputDecoration(
        hint: Text(hint,style: TextStyle(
          color: kPrimaryColor,
        ),),
        border: customOutLineInputBorder(),
        enabledBorder: customOutLineInputBorder(),
        focusedBorder: customOutLineInputBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder customOutLineInputBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
