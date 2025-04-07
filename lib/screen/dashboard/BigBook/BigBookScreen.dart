import 'package:first_project/screen/dashboard/BigBook/BigBookHeadrow.dart';
import 'package:first_project/screen/dashboard/BigBook/BigBookRow.dart';
import 'package:first_project/component/MonthPickerDialog.dart';
import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

class BigBookScreen extends StatefulWidget {
  const BigBookScreen({super.key});

  @override
  State<BigBookScreen> createState() => _BigBookScreenState();
}

class _BigBookScreenState extends State<BigBookScreen> {
  String? _selectedMonth;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedMonth ??= ModalRoute.of(context)!.settings.arguments as String;
  }

  @override
  Widget build(BuildContext context) {
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
                            "Buku Besar",
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
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 3, color: colorsNavy),
                    ),
                  ),
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
                                            (month) => setState(() {
                                              _selectedMonth = month;
                                            }),
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
                Flexible(
                  fit: FlexFit.loose,
                  child: Stack(
                    children: [
                      ListView(
                        padding: EdgeInsets.all(0),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          SizedBox(height: 20),
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 6),
                                child: Text(
                                  "Akun 101",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    color: colorsNavy,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Kas",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    color: colorsNavy,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          BigBookHeadRow(
                            text1: "Tgl",
                            text2: "Keterangan",
                            text3: "Debit",
                            text4: "Kredit",
                            text5: "Saldo",
                          ),
                          BigBookRow(
                            text1: "01/02/02",
                            text2: "Penerimaan Dana OP",
                            text3: "8.000.000",
                            text4: "",
                            text5: "8.000.000",
                          ),

                          SizedBox(height: 20),
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 6),
                                child: Text(
                                  "Akun 301",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    color: colorsNavy,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Dana Operasional",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    color: colorsNavy,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          BigBookHeadRow(
                            text1: "Tgl",
                            text2: "Keterangan",
                            text3: "Debit",
                            text4: "Kredit",
                            text5: "Saldo",
                          ),
                          BigBookRow(
                            text1: "01/02/02",
                            text2: "Pemasukan",
                            text3: "",
                            text4: "8.000.000",
                            text5: "8.000.000",
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
