import 'package:first_project/component/MonthPickerDialog.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordHeadRow.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordRow.dart';
import 'package:first_project/model/TransactionRecord.dart';
import 'package:first_project/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionRecordListFragment extends StatefulWidget {
  TransactionRecordListFragment(
    this.transactionRecords,
    this.navigateToAdd, {
    super.key,
    required this.selectedMonth,
    required this.changeMonths,
  });

  final Function({TransactionRecord? transactionRecord}) navigateToAdd;
  final Function(String) changeMonths;
  final List<TransactionRecord> transactionRecords;
  final String selectedMonth;

  @override
  State<TransactionRecordListFragment> createState() =>
      _TransactionRecordListState();
}

class _TransactionRecordListState extends State<TransactionRecordListFragment> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 3, color: colorsNavy)),
              ),
              child: Stack(
                fit: StackFit.loose,
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
                                    onItemPressed: widget.changeMonths,
                                  );
                                },
                              ),
                            },
                        child: Container(
                          width: 32,
                          height: 32,
                          alignment: Alignment.centerRight,
                          child: Image.asset("assets/image/ic_ellipsize.png"),
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
                          widget.selectedMonth,
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
            TranasactionRecordHeadRow(
              text1: "Tanggal",
              text2: "Keterangan",
              text3: "Bukti\nTransaksi",
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Stack(
                children: [
                  ListView(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 112,
                    ),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children:
                        widget.transactionRecords
                            .map(
                              (item) => GestureDetector(
                                onTap:
                                    () => widget.navigateToAdd(
                                      transactionRecord: item,
                                    ),
                                child: TranasactionRecordRow(
                                  (fileUri) {
                                    setState(() {
                                      int index = widget.transactionRecords
                                          .indexOf(item);
                                      widget
                                          .transactionRecords[index]
                                          .paymentReceiptFileUri = fileUri;
                                    });
                                  },
                                  fileUri: item.paymentReceiptFileUri,
                                  text1: item.date,
                                  text2: item.additionalInformation,
                                  paddingVertical: 8,
                                  paddingHorizontal: 8,
                                  isWithDivider: false,
                                ),
                              ),
                            )
                            .toList(),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(colorsNavy),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(),
                          ),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                          ),
                        ),
                        onPressed:
                            () => widget.navigateToAdd(transactionRecord: null),
                        child: Text(
                          "Tambah",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 14,
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
          ],
        ),
      ),
    );
  }
}
