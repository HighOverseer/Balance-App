import 'package:flutter/material.dart';


class EditText extends StatelessWidget{
  const EditText({
    super.key,
    required this.text,
    required this.hint,
    this.cornerRadius = 8,
    this.fontSize = 14,
    this.marginVertical = 8.0,
    this.marginHorizontal = 24.0,
    this.isObscureText = false
  });

  final String text;
  final double cornerRadius;
  final String hint;
  final double fontSize;
  final double marginVertical;
  final double marginHorizontal;
  final bool isObscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginVertical, horizontal: marginHorizontal),
      decoration: BoxDecoration(
        color:Color(0xFFCECEE1),
        borderRadius: BorderRadius.all(Radius.circular(cornerRadius))
      ),
      child: TextField(
        obscureText: isObscureText,
        autocorrect: false,
        enableSuggestions: false,
        autofocus: false,
        style: TextStyle(
          fontSize: fontSize,
          textBaseline: null,
          color: Colors.white
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 18)
        ),
      ),
    );
  }
}