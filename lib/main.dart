import 'package:first_project/model/TransactionRecord.dart';
import 'package:first_project/screen/dashboard/account/MyAccountScreen.dart';
import 'package:first_project/screen/dashboard/BigBook/BigBookScreen.dart';
import 'package:first_project/screen/dashboard/DashboardScreen.dart';
import 'package:first_project/screen/auth/RegistrationScreen.dart';
import 'package:first_project/screen/dashboard/FinancialStatements/FinancialStatementsScreen.dart';
import 'package:first_project/screen/dashboard/GeneralLedger/GeneralLedgerScreen.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordListFragment.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordScreen.dart';
import 'package:first_project/screen/dashboard/TrialBalance/TrialBalanceScreen.dart';
import 'package:flutter/material.dart';
import 'screen/auth/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

enum MainRoutes {
  login("/login"),
  registration("/registration"),
  dashboard("/dashboard"),
  transactionRecord("/dashboard/transaction_record"),
  generalLedger("/dashboard/general_ledger"),
  bigBook("dashboard/big_book"),
  trialBalance("dashboard/trial_balance"),
  financialStatements("dashboard/financial_statements"),
  myAccount("/dashboard/myAccount");

  const MainRoutes(this.path);

  final String path;
}

final Map<String, List<TransactionRecord>> transactionRecordRepo = {
  "Januari": [],
  "Februari": [],
  "Maret": [],
  "April": [],
  "Mei": [],
  "Juni": [],
  "Juli": [],
  "Agustus": [],
  "September": [],
  "Oktober": [],
  "November": [],
  "Desember": []
};

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainRoutes.login.path,
      routes: {
        MainRoutes.login.path: (context) => LoginScreen(() => Navigator.pushNamed(context, MainRoutes.registration.path)),
        MainRoutes.registration.path: (context) => const RegistrationScreen(),
        MainRoutes.dashboard.path: (context) => const DashboardScreen(),
        MainRoutes.transactionRecord.path: (context) => TransactionRecordScreen(),
        MainRoutes.generalLedger.path: (context) => const GeneralLedgerScreen(),
        MainRoutes.bigBook.path: (context) => const BigBookScreen(),
        MainRoutes.trialBalance.path: (context) => const TrialBalanceScreen(),
        MainRoutes.financialStatements.path : (context) => const FinancialStatementsScreen(),
        MainRoutes.myAccount.path: (context) => const MyAccountScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage(this.body, {super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body);
  }
}
