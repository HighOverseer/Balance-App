import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

class FinancialStatementsMonetaryPosition extends StatelessWidget {
  const FinancialStatementsMonetaryPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        fit: FlexFit.loose,
        child: Stack(
          children: [
            ListView(
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Divider(color: colorsNavy, height: 2),
                  Container(
                    margin: EdgeInsets.only(
                        left: 22, right: 22, top: 12, bottom: 12),
                    child: Text(
                      "Aktiva",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                  ),
                  Divider(color: colorsNavy, height: 2),
                  Container(
                    margin: EdgeInsets.only(left: 22, right: 22,top: 14, bottom: 8),
                    child: Text(
                      "Aset Lancar",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          color: colorsNavy),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 22, right: 22, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                      "Kas",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          color: colorsNavy),
                    ),
                    Text(
                      "8.000.000",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          color: colorsNavy),
                    ),
                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 22, right: 22, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                      "Total Aset Lancar",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                    Text(
                      "8.000.000",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                      ],
                    )
                  ),
                  Divider(color: colorsNavy, height: 2),
                  Container(
                    margin: EdgeInsets.only(
                        left: 22, right: 22, top: 12, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                      "Total Aktiva",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                    Text(
                      "8.000.000",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                      ],
                    )
                  ),
                  Divider(color: colorsNavy, height: 2),
                  


                  Container(
                    margin: EdgeInsets.only(
                        left: 22, right: 22, top: 12, bottom: 12),
                    child: Text(
                      "Pasiva",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                  ),
                  Divider(color: colorsNavy, height: 2),
                  Container(
                    margin: EdgeInsets.only(left: 22, right: 22,top: 14, bottom: 8),
                    child: Text(
                      "Aset Neto",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          color: colorsNavy),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 22, right: 22, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                      "Aset Neto Terikat Permanen",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          color: colorsNavy),
                    ),
                    Text(
                      "8.000.000",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          color: colorsNavy),
                    ),
                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 22, right: 22, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                      "Total Aset Neto",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                    Text(
                      "8.000.000",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                      ],
                    )
                  ),
                  Divider(color: colorsNavy, height: 2),
                  Container(
                    margin: EdgeInsets.only(
                        left: 22, right: 22, top: 12, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                      "Total Pasiva",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                    Text(
                      "8.000.000",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: colorsNavy),
                    ),
                      ],
                    )
                  ),
                  Divider(color: colorsNavy, height: 2),
                ])
          ],
        ));
  }
}
