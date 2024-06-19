import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key, required this.text, required this.onPressed, this.cornerRadius = 0.0, this.margin = const EdgeInsets.all(4), this.backgroundColor = colorsNavy, this.textColor = Colors.white});

  final String text;
  final Function()? onPressed;
  final double cornerRadius;
  final EdgeInsets margin;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
      children: [
        Expanded(
            flex: 1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                elevation: 4,
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
              onPressed: (){
                if(onPressed != null){
                  onPressed!();
                }
              } ,
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24
                ),
              ),
            )
          ),
      ],
    ),
    );
  }
}
