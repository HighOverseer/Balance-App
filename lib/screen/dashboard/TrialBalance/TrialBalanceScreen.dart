import 'package:first_project/component/MonthPickerDialog.dart';
import 'package:first_project/screen/dashboard/TrialBalance/TrialBalanceHeadRow.dart';
import 'package:first_project/screen/dashboard/TrialBalance/TrialBalanceRow.dart';
import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

class TrialBalanceScreen extends StatefulWidget {
  const TrialBalanceScreen({super.key});

  @override
  State<TrialBalanceScreen> createState() => _TrialBalanceScreenState();
}

class _TrialBalanceScreenState extends State<TrialBalanceScreen> {
  String? _selectedMonth;

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
                            onPressed: () => Navigator.pop(context),
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
                            "Neraca Saldo",
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
                                        onItemPressed:
                                            (month) => {
                                              setState(() {
                                                _selectedMonth = month;
                                              }),
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
                TrialBalanceHeadRow(
                  text1: "No",
                  text2: "Keterangan",
                  text3: "Debit",
                  text4: "Kredit",
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Stack(
                    children: [
                      ListView(
                        padding: EdgeInsets.all(0),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          TrialBalanceRow(
                            text1: "101",
                            text2: "Kas",
                            text3: "8.000.000",
                          ),
                          TrialBalanceRow(
                            text1: "301",
                            text2: "Dana Operasional",
                            text4: "8.000.000",
                          ),
                          TrialBalanceRow(
                            text2: "Jumlah",
                            text3: "8.000.000",
                            text4: "8.000.000",
                            isTextBold: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
