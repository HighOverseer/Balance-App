import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

class FinancialStatementsActivity extends StatelessWidget {
  const FinancialStatementsActivity({super.key});

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
                      "Pendapatan Aset Neto Terikat",
                      style: TextStyle(
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
                            "Dana Operasional",
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
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 22, right: 22, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Pendapatan",
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
                      )),
                  Container(
                    margin: EdgeInsets.only(
                        left: 22, right: 22, top: 28, bottom: 12),
                    child: Text(
                      "Beban",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          color: colorsNavy),
                    ),
                  ),
                   Container(
                      margin: EdgeInsets.only(left: 22, right: 22, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "-",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.bold,
                                color: colorsNavy),
                          ),
                          Text(
                            "-",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.bold,
                                color: colorsNavy),
                          ),
                        ],
                      )),
                      Container(
                      margin: EdgeInsets.only(left: 22, right: 22, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Beban",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.bold,
                                color: colorsNavy),
                          ),
                          Text(
                            "-",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.bold,
                                color: colorsNavy),
                          ),
                        ],
                      )),
                      Container(
                      margin: EdgeInsets.only(left: 22, right: 22, bottom: 12),
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
                      )),
                ])
          ],
        ));
  }
}
