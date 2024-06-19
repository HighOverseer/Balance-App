import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordRow.dart';
import 'package:first_project/model/TransactionRecord.dart';
import 'package:first_project/main.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordAddFragment.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordListFragment.dart';
import 'package:flutter/material.dart';

enum TransactionRecordRoutes {
  list,
  add;
}

class TransactionRecordScreen extends StatefulWidget {
  const TransactionRecordScreen({super.key});

  @override
  State<TransactionRecordScreen> createState() => _TransactionRecordState();
}

class _TransactionRecordState extends State<TransactionRecordScreen> {
  TransactionRecordRoutes route = TransactionRecordRoutes.list;

  void navigateToAdd({TransactionRecord? transactionRecord}) {
    setState(() {
      route = TransactionRecordRoutes.add;
      selectedTransactionRecord = transactionRecord;
    });
  }

  void navigateToList() {
    setState(() {
      route = TransactionRecordRoutes.list;
      selectedTransactionRecord = null;
    });
  }

  void changeTransactionRecordOnMonth(String month){ 
    setState(() {
      _selectedMonth = month;
      _transactionRecords = transactionRecordRepo[month]!;
    });
  }

  TransactionRecord? selectedTransactionRecord;
  List<TransactionRecord> _transactionRecords = [];
  String? _selectedMonth;

  @override
  Widget build(BuildContext context) {
    if(_selectedMonth == null){
      _selectedMonth = ModalRoute.of(context)!.settings.arguments as String;
      _transactionRecords = transactionRecordRepo[_selectedMonth!]!;
    }
    
    return MyHomePage(Column(
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
                                      EdgeInsets.all(0)),
                                  alignment: Alignment.centerLeft,
                                  splashFactory: NoSplash.splashFactory),
                              onPressed: () =>
                                  route == TransactionRecordRoutes.list
                                      ? Navigator.pop(context)
                                      : setState(() {
                                          route = TransactionRecordRoutes.list;
                                        }),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: Image.asset(
                                        "assets/image/ic_button_back_white.png"),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Back",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Inter",
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              route == TransactionRecordRoutes.list ? "Catatan Transaksi" : "Transaksi $_selectedMonth",
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24),
                            )
                          ],
                        ),
                        Spacer(),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset("assets/image/logo_2.png"),
                        )
                      ],
                    ))),
          ],
        ),
        route == TransactionRecordRoutes.list
            ? TransactionRecordListFragment( 
              _transactionRecords,
              navigateToAdd,
              selectedMonth: _selectedMonth!,
              changeMonths: changeTransactionRecordOnMonth,
            )
            : TransactionRecordAddFragment(
              transactionRecord: selectedTransactionRecord,
              navigateToList,
              (transactionRecord, isNew) {
                if(isNew){
                  _transactionRecords.add(transactionRecord);
                }else{
                  int itemIndex = _transactionRecords.indexWhere((item) => item.id == transactionRecord.id);
                  _transactionRecords.replaceRange(itemIndex, itemIndex+1, [transactionRecord]);
                }
                navigateToList();                
              }
            ),
        Row(
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              color: Color(0xFF0B0E4F),
              width: 56,
              height: 56,
              alignment: Alignment.center,
              child: Image.asset("assets/image/ic_person.png"),
            ))
          ],
        ),
      ],
    ));
  }
}
