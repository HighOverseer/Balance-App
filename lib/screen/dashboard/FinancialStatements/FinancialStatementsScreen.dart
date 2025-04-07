import 'package:first_project/component/MonthPickerDialog.dart';
import 'package:first_project/screen/dashboard/FinancialStatements/FinancialStatementsActivity.dart';
import 'package:first_project/screen/dashboard/FinancialStatements/FinancialStatementsMonetaryPosition.dart';
import 'package:first_project/screen/dashboard/FinancialStatements/FinancialStatemtentsList.dart';
import 'package:first_project/screen/dashboard/FinancialStatements/FinancialStatemtnsCashFlow.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordRow.dart';
import 'package:first_project/model/TransactionRecord.dart';
import 'package:first_project/main.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordAddFragment.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordListFragment.dart';
import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

enum FinancialStatementsRoute { list, activity, monetaryPosition, cashFlow }

class FinancialStatementsScreen extends StatefulWidget {
  const FinancialStatementsScreen({super.key});

  @override
  State<FinancialStatementsScreen> createState() =>
      _FinancialStatementsScreenState();
}

class _FinancialStatementsScreenState extends State<FinancialStatementsScreen> {
  String? _selectedMonth;
  FinancialStatementsRoute _route = FinancialStatementsRoute.list;

  Map<FinancialStatementsRoute, String> _headerText = {
    FinancialStatementsRoute.list: "Laporan Keuangan",
    FinancialStatementsRoute.activity: "Laporan Aktivitas",
    FinancialStatementsRoute.monetaryPosition: "Laporan Posisi Keuangan",
    FinancialStatementsRoute.cashFlow: "Laporan Arus Kas",
  };

  void _changeRoute(FinancialStatementsRoute route) {
    setState(() {
      _route = route;
    });
  }

  Widget _setBody() {
    switch (_route) {
      case FinancialStatementsRoute.list:
        return FinancialStatementsList(
          () => _changeRoute(FinancialStatementsRoute.activity),
          () => _changeRoute(FinancialStatementsRoute.monetaryPosition),
          () => _changeRoute(FinancialStatementsRoute.cashFlow),
        );
      case FinancialStatementsRoute.activity:
        return FinancialStatementsActivity();
      case FinancialStatementsRoute.monetaryPosition:
        return FinancialStatementsMonetaryPosition();
      case FinancialStatementsRoute.cashFlow:
        return FinancialStatementsCashFlow();
    }
  }

  @override
  Widget build(BuildContext context) {
    _selectedMonth ??= ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  color: Color(0xFF0B0E4F),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.all(0),
                              ),
                              alignment: Alignment.centerLeft,
                              splashFactory: NoSplash.splashFactory,
                            ),
                            onPressed:
                                () =>
                                    _route == FinancialStatementsRoute.list
                                        ? Navigator.pop(context)
                                        : _changeRoute(
                                          FinancialStatementsRoute.list,
                                        ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: Image.asset(
                                    "assets/image/ic_button_back_white.png",
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Back",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Inter",
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            _headerText[_route]!,
                            style: TextStyle(
                              fontFamily: "Inter",
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/image/logo_2.png"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(14),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap:
                                () => {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return MonthPickerDialog(
                                        onItemPressed: (month) {
                                          setState(() {
                                            _selectedMonth = month;
                                          });
                                        },
                                      );
                                    },
                                  ),
                                },
                            child: Container(
                              width: 32,
                              height: 32,
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                "assets/image/ic_ellipsize.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: colorsNavy,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              _selectedMonth!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                _setBody(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
