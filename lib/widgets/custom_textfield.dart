import 'package:flutter/material.dart';

class CustomtextField extends StatelessWidget {
  final String hint;
  final Color color;
  final TextEditingController text;
  const CustomtextField({Key? key, required this.hint, required this.color, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: text,
        textInputAction: TextInputAction.done,
        maxLength: null,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: color),
          border: InputBorder.none,
          counterText: "",
        ));
  }
}
