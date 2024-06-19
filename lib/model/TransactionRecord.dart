


import 'package:nanoid/nanoid.dart';

class TransactionRecord{
  TransactionRecord(this.date, this.transactionRevenueTypes, this.transactionExpenseTypes, this.isInCash, this.additionalInformation, this.value, {String? id}):this.id = id ?? nanoid();

  String id;
  final String date;
  final TransactionRevenueTypes transactionRevenueTypes;
  final TransactionExpenseTypes transactionExpenseTypes;
  final bool isInCash;
  final String additionalInformation;
  final String value;

  Uri? paymentReceiptFileUri;


  TransactionRecord copy({
    String? date,
    TransactionRevenueTypes? transactionRevenueTypes,
    TransactionExpenseTypes? transactionExpenseTypes,
    bool? isInCash,
    String? additionalInformation,
    String? value
    }){
      return TransactionRecord(
        id: id,
        date ?? this.date,
        transactionRevenueTypes ?? this.transactionRevenueTypes,
        transactionExpenseTypes ?? this.transactionExpenseTypes,
        isInCash ?? this.isInCash,
        additionalInformation ?? this.additionalInformation,
        value ?? this.value
      );
  }
}

enum TransactionRevenueTypes{
  sale,
  rental,
  receipt,
  none;
}

enum TransactionExpenseTypes{
  purchase,
  rental,
  payment,
  none
}



