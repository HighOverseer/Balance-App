import 'package:first_project/theme/colors.dart';
import 'package:flutter/widgets.dart';

class TranasactionRecordHeadRow extends StatelessWidget {
  const TranasactionRecordHeadRow(
      {super.key,
      this.text1 = "",
      this.text2 = "",
      this.text3 = "",
      this.paddingHorizontal = 16,
      this.paddingVertical = 16,
});

  final String text1;
  final String text2;
  final String text3;
  final double paddingVertical;
  final double paddingHorizontal;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 3, color: Color(0xFFCECEE1)))),
      padding: EdgeInsets.symmetric(
          vertical: paddingVertical, horizontal: paddingHorizontal),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              text1,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 15,
                  color: colorsNavy,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              text2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 15,
                  color: colorsNavy,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              text3,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 15,
                  color: colorsNavy,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
