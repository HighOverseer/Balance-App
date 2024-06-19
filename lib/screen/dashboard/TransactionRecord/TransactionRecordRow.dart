import 'package:first_project/component/FilePickerDialog.dart';
import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TranasactionRecordRow extends StatelessWidget {
  const TranasactionRecordRow(this.onSetFileUri,
      {super.key,
      this.text1 = "",
      this.text2 = "",
      this.paddingHorizontal = 16,
      this.paddingVertical = 16,
      this.isWithDivider = true,
      this.fileUri
      });

  final String text1;
  final String text2;
  final double paddingVertical;
  final double paddingHorizontal;
  final bool isWithDivider;
  final Uri? fileUri;
  final Function(Uri?) onSetFileUri;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: !isWithDivider
          ? null
          : BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 3, color: Color(0xFFCECEE1)))),
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
                  fontSize: 14,
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
                  fontSize: 14,
                  color: colorsNavy,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 52,
                    height: 26,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.zero,
                          backgroundColor: colorsNavy,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () => showDialog(
                          context: context,
                          builder: (context) {
                            return FilePickerDialog(fileUri: fileUri,(fileUri) {
                              onSetFileUri(fileUri);
                            });
                          }),
                      child: Text(
                        fileUri != null ? "Lihat" : "Pilih",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
