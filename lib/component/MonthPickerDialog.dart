import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

class MonthPickerDialog extends StatefulWidget {
  const MonthPickerDialog({required this.onItemPressed});

  final Function(String) onItemPressed;

  @override
  State<MonthPickerDialog> createState() => _MonthPickerState();
}

class _MonthPickerState extends State<MonthPickerDialog> {

  List<String> _months = [
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 5, color: colorsNavy_100)),
        width: 240,
        height: 218,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "2024",
              style: TextStyle(
                  color: colorsNavy_100,
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Inter"),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.count(
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 11 / 3,
                children: List.generate(
                  12,
                  (index) => ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        widget.onItemPressed(_months[index]);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(0),
                        fixedSize: Size(64, 32),
                        backgroundColor: colorsNavy,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      child: Text(
                        _months[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
