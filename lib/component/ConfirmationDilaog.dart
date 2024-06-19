



import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

class ConfirmationDialog extends StatefulWidget {
  const ConfirmationDialog(this.text, {required this.onItemPressed, this.backgroundColor = Colors.white, this.textColor = colorsNavy, this.radius = 12, this.isTextBold = true, this.width = 240, this.height = 148, this.buttonTextColor,this.buttonColor});

  final Function(bool isConfirmed) onItemPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color? buttonTextColor;
  final Color? buttonColor;
  final double radius;
  final bool isTextBold;
  final double width;
  final double height;


  @override
  State<ConfirmationDialog> createState() => _ConfirmationDialogState();
}

class _ConfirmationDialogState extends State<ConfirmationDialog> {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.radius),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(widget.radius),
            border: Border.all(width: 5, color: colorsNavy_100)),
        width: widget.width,
        height: widget.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: widget.textColor,
                  fontSize: 14,
                  fontWeight: widget.isTextBold ? FontWeight.w800 : FontWeight.w500,
                  fontFamily: "Inter"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                      width: 72,
                      height: 22,
                      child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        widget.onItemPressed(false);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(0),
                        backgroundColor: widget.buttonColor ?? Color(0xFFCECEE1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      child: Text(
                        "Batal",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: widget.buttonTextColor ?? colorsNavy),
                      )
                    ),
                    ),
                    SizedBox(
                      width: 71,
                      height: 22,
                      child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        widget.onItemPressed(true);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(0),
                        backgroundColor: widget.buttonColor ?? colorsNavy,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      child: Text(
                        "Ya",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: widget.buttonTextColor ?? Color(0xFFCECEE1)),
                      )
                    ),
                    )
                    
              ],
            )
          ],
        ),
      ),
    );
  }
}
