
import 'package:flutter/material.dart';

class CircularCheckedBox extends StatelessWidget{
  const CircularCheckedBox({
    required this.text,
    required this.onChanged,
    required this.isChecked,
    this.textColor = Colors.black,
    this.fontSize = 14,
    this.borderColor = Colors.black,
    this.fontWeight = FontWeight.w500
  });

  final String text;
  final bool isChecked;
  final void Function(bool?) onChanged;
  final double fontSize;
  final Color textColor;
  final Color borderColor;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(  
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          height: 24,
          child: Checkbox(
            side: BorderSide(color: borderColor, width: 2),
            value: isChecked,
            onChanged: onChanged,
            shape: CircleBorder(),
           ),
        ),
        SizedBox(width: 8,),
        Text(
          text,
          style: TextStyle(
            fontSize:  fontSize,
            color: textColor,
            fontWeight: FontWeight.w500,
            fontFamily: "Inter"
          ),
        )
      ],
    );
  }
}