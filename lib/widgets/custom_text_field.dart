import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine = 1, this.onSaved});
final String hint;
final int maxLine;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'this flied is required';
        }else{
          return null;
        }
      },
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
