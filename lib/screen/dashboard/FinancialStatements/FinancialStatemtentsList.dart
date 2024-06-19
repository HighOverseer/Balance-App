


import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

class FinancialStatementsList extends StatelessWidget{
  FinancialStatementsList(this._navigateToActivity, this._navigateToMonetaryPosition, this._navigateToCashFlow, {super.key, });

  final void Function() _navigateToActivity;
  final void Function() _navigateToMonetaryPosition;
  final void Function() _navigateToCashFlow;

  @override
  Widget build(BuildContext context) {
    return Flexible(
            fit: FlexFit.loose,
            child: Stack(
              children: [
                ListView(
                    padding:
                        EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 112),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                        Divider(
                          color: colorsNavy,
                          height: 2
                        ),
                        GestureDetector(
                          onTap: _navigateToActivity,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                            child: Text(
                            "Laporan Aktivitas",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              color: colorsNavy
                            ),
                          ),
                          )
                        ),
                        Divider(
                          color: colorsNavy,
                          height: 2
                        ),
                        GestureDetector(
                          onTap: _navigateToMonetaryPosition,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                            child: Text(
                            "Laporan Posisi Keuangan",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              color: colorsNavy
                            ),
                          ),
                          )
                        ),
                        Divider(
                          color: colorsNavy,
                          height: 2
                        ),
                        GestureDetector(
                          onTap: _navigateToCashFlow,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                            child: Text(
                            "Laporan Arus Kas",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              color: colorsNavy
                            ),
                          ),
                          )
                        ),
                        Divider(
                          color: colorsNavy,
                          height: 2
                        ),
                    ]
                )
              ],
            ));
  }
}