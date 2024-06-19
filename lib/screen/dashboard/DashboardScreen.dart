import 'package:first_project/component/ConfirmationDilaog.dart';
import 'package:first_project/component/DashboardItem.dart';
import 'package:first_project/component/MonthPickerDialog.dart';
import 'package:first_project/main.dart';
import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(
      Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              color: Color(0xFF0B0E4F),
              width: 122,
              height: 122,
              alignment: Alignment.center,
              child: Image.asset("assets/image/logo_2.png"),
            ))
          ],
        ),
        DashboardItem(
          "Catatan Transaksi",
          onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return MonthPickerDialog(onItemPressed: (month) {
                    Navigator.pushNamed(
                      context,
                      MainRoutes.transactionRecord.path,
                      arguments: month
                    );
                  });
                })      
        ),
        DashboardItem("Jurnal Umum",
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return MonthPickerDialog(onItemPressed: (month) {
                      showDialog(context: context, builder: (context){
                        return ConfirmationDialog(
                          "Konversikan Catatan Transaksi menjadi Jurnal Umum?",
                           onItemPressed: (isConfirmed) {
                              if(isConfirmed){
                                Navigator.pushNamed(
                                  context,
                                  MainRoutes.generalLedger.path,
                                  arguments: month
                                );
                              }
                           }
                          );
                        }  
                      ); 
                  });
                })),
        DashboardItem(
          "Buku Besar",
          onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return MonthPickerDialog(onItemPressed: (month) {
                      showDialog(context: context, builder: (context){
                        return ConfirmationDialog(
                          "Konversikan Jurnal Umum menjadi Buku Besar?",
                           onItemPressed: (isConfirmed) {
                              if(isConfirmed){
                                Navigator.pushNamed(
                                  context,
                                  MainRoutes.bigBook.path,
                                  arguments: month
                                );
                              }
                           }
                          );
                        }  
                      ); 
                  });
                }),
        ),
        DashboardItem(
          "Neraca Saldo",
          onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return MonthPickerDialog(onItemPressed: (month) {
                      showDialog(context: context, builder: (context){
                        return ConfirmationDialog(
                          "Konversikan Buku Besar menjadi Neraca Saldo?",
                           onItemPressed: (isConfirmed) {
                              if(isConfirmed){
                                Navigator.pushNamed(
                                  context,
                                  MainRoutes.trialBalance.path,
                                  arguments: month
                                );
                              }
                           }
                          );
                        }  
                      ); 
                  });
                }),
        ),
        DashboardItem(
          "Laporan Keuangan",
          onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return MonthPickerDialog(onItemPressed: (month) {
                      showDialog(context: context, builder: (context){
                        return ConfirmationDialog(
                          "Konversikan Neraca Saldo menjadi Laporan Keuangan?",
                           onItemPressed: (isConfirmed) {
                              if(isConfirmed){
                                Navigator.pushNamed(
                                  context,
                                  MainRoutes.financialStatements.path,
                                  arguments: month
                                );
                              }
                           }
                          );
                        }  
                      ); 
                  });
                }),
        ),
        Spacer(),
        Row(
          children: [
            Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, MainRoutes.myAccount.path),
                  child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              color: Color(0xFF0B0E4F),
              width: 56,
              height: 56,
              alignment: Alignment.center,
              child: Image.asset("assets/image/ic_person.png"),
            ),
                )
            )
          ],
        ),
      ],
    ));
  }
}
