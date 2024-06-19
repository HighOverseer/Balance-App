import 'package:first_project/component/CircularCheckBox.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordRow.dart';
import 'package:first_project/model/TransactionRecord.dart';
import 'package:first_project/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionRecordAddFragment extends StatefulWidget {
  TransactionRecordAddFragment(this.navigateBack, this.save, {super.key, this.transactionRecord});

  final Function() navigateBack;
  final TransactionRecord? transactionRecord;
  final Function(TransactionRecord transactionRecord, bool isNew) save;

  @override
  State<TransactionRecordAddFragment> createState() =>
      _TransactionRecordAddState();
}

class _TransactionRecordAddState extends State<TransactionRecordAddFragment> {

  String? date;
  TransactionRevenueTypes? transactionRevenueTypes;
  TransactionExpenseTypes? transactionExpenseTypes;
  bool? isInCash;
  String? additionalInformation;
  String? value;

  @override
  void initState() {
    super.initState();
    date = widget.transactionRecord?.date;
    transactionRevenueTypes = widget.transactionRecord?.transactionRevenueTypes;
    transactionExpenseTypes = widget.transactionRecord?.transactionExpenseTypes;
    isInCash = widget.transactionRecord?.isInCash;
    additionalInformation = widget.transactionRecord?.additionalInformation;
    value = widget.transactionRecord?.value;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Flexible(
            fit: FlexFit.loose,
            child: Stack(
              children: [
                ListView(
                  padding:
                      EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 112),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 36),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 3, color: colorsNavy))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.left,
                            "Tanggal",
                            style: TextStyle(

                                fontFamily: "Inter",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: colorsNavy),
                          ),
                          Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.rectangle,
                            ),
                            child: 
                            TextField(
                              controller: TextEditingController(text: date ?? ""),
                              onChanged: (value) {
                                date = value;
                              },
                              autocorrect: false,
                              enableSuggestions: false,
                              autofocus: false,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: colorsNavy),
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: "xx/xx/xxxx",
                                  hintStyle: TextStyle(
                                    color: Color(0xFFCECEE1)
                                  ),
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 36),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 3, color: colorsNavy))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.left,
                            "Jenis Transaksi",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: colorsNavy),
                          ),
                          SizedBox(height: 6,),
                          Text(
                            textAlign: TextAlign.left,
                            "Pemasukan",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: colorsNavy,
                                color: Colors.transparent,
                                shadows: [Shadow(color: colorsNavy, offset: Offset(0, -2))]
                            ),
                          ),
                          SizedBox(height: 8,),
                          CircularCheckedBox(
                            text: "Penjualan",
                            onChanged: (newValue) => setState(() {
                              transactionRevenueTypes = TransactionRevenueTypes.sale;
                            }),
                            isChecked: transactionRevenueTypes == TransactionRevenueTypes.sale,
                            fontSize: 16,
                            textColor: colorsNavy,
                          ),
                          SizedBox(height: 8,),
                          CircularCheckedBox(
                            text: "Penyewaan",
                            onChanged: (newValue) => setState(() {
                              transactionRevenueTypes = TransactionRevenueTypes.rental;
                            }),
                            isChecked: transactionRevenueTypes == TransactionRevenueTypes.rental,
                            fontSize: 16,
                            textColor: colorsNavy,
                          ),
                          SizedBox(height: 8,),
                          CircularCheckedBox(
                            text: "Penerimaan",
                            onChanged: (newValue) => setState(() {
                              transactionRevenueTypes = TransactionRevenueTypes.receipt;
                            }),
                            isChecked: transactionRevenueTypes == TransactionRevenueTypes.receipt,
                            fontSize: 16,
                            textColor: colorsNavy,
                          ),

                          SizedBox(height: 12,),
                          Text(
                            textAlign: TextAlign.left,
                            "Pengeluaran",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: colorsNavy,
                                color: Colors.transparent,
                                shadows: [Shadow(color: colorsNavy, offset: Offset(0, -2))]
                            ),
                          ),
                          SizedBox(height: 8,),
                          CircularCheckedBox(
                            text: "Pembelian",
                            onChanged: (newValue) => setState(() {
                              transactionExpenseTypes = TransactionExpenseTypes.purchase;
                            }),
                            isChecked: transactionExpenseTypes == TransactionExpenseTypes.purchase,
                            fontSize: 16,
                            textColor: colorsNavy,
                          ),
                          SizedBox(height: 8,),
                          CircularCheckedBox(
                            text: "Penyewaan",
                            onChanged: (newValue) => setState(() {
                              transactionExpenseTypes = TransactionExpenseTypes.rental;
                            }),
                            isChecked: transactionExpenseTypes == TransactionExpenseTypes.rental,
                            fontSize: 16,
                            textColor: colorsNavy,
                          ),
                          SizedBox(height: 8,),
                          CircularCheckedBox(
                            text: "Pembayaran",
                            onChanged: (newValue) => setState(() {
                              transactionExpenseTypes = TransactionExpenseTypes.payment;
                            }),
                            isChecked: transactionExpenseTypes == TransactionExpenseTypes.payment,
                            fontSize: 16,
                            textColor: colorsNavy,
                          ),                        
                        ],
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerLeft,
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 36),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 3, color: colorsNavy))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.left,
                            "Metode Transaksi",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: colorsNavy),
                          ),
                          SizedBox(height: 8,),
                          CircularCheckedBox(
                            text: "Tunai",
                            onChanged: (newValue) => setState(() {
                              isInCash = true;
                            }),
                            isChecked: isInCash == true,
                            fontSize: 16,
                            textColor: colorsNavy,
                          ),
                          SizedBox(height: 8,),
                          CircularCheckedBox(
                            text: "Non-Tunai",
                            onChanged: (newValue) => setState(() {
                              isInCash = false;
                            }),
                            isChecked: isInCash == false,
                            fontSize: 16,
                            textColor: colorsNavy,
                          ),
                                 
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding:
                          EdgeInsets.only(left: 36, right: 36, top: 14, bottom: 0),
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.left,
                            "Nilai (Rupiah)",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: colorsNavy),
                          ),
                          
                          Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.rectangle,
                            ),
                            child: 
                            TextField(
                              controller: TextEditingController(text:  value ?? ""),
                              autocorrect: false,
                              enableSuggestions: false,
                              autofocus: false,
                              onChanged: (value) {
                                this.value = value;
                              },
                              style: TextStyle(
                                  fontSize: 16,
                                  color: colorsNavy),
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: "Nilai barang/dana",
                                  hintStyle: TextStyle(
                                    color: Color(0xFFCECEE1)
                                  ),
                                  ),
                            ),
                          )
                                 
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 36),
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.left,
                            "Keterangan Tambahan",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: colorsNavy),
                          ),
                          
                          Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.rectangle,
                            ),
                            child: 
                            TextField(
                              controller: TextEditingController(text: additionalInformation ?? ""),
                              autocorrect: false,
                              enableSuggestions: false,
                              autofocus: false,
                              onChanged: (value) {
                                additionalInformation = value;
                              },
                              style: TextStyle(
                                  fontSize: 16,
                                  color: colorsNavy),
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: "Nama barang/Nama Dana",
                                  hintStyle: TextStyle(
                                    color: Color(0xFFCECEE1)
                                  ),
                                  ),
                            ),
                          )
                                 
                        ],
                      ),
                    )
                  ],
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFFCECEE1)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder()),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 26))),
                        onPressed: widget.navigateBack,
                        child: Text(
                          "Batal",
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: colorsNavy),
                        ),
                      ),
                          ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(colorsNavy),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder()),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 18))),
                          onPressed: () {

                            if(date == null || date?.isEmpty == true || transactionRevenueTypes == null || transactionExpenseTypes == null || isInCash == null || additionalInformation == null || additionalInformation?.isEmpty == true){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Field tidak boleh ada yang kosong"))
                              );
                              return;
                            }

                            bool isNew = widget.transactionRecord == null;
                            TransactionRecord transactionRecord; 
                            if(isNew){
                              transactionRecord = TransactionRecord(
                                date!,
                                transactionRevenueTypes!,
                                transactionExpenseTypes!,
                                isInCash!,
                                additionalInformation!,
                                value!
                              );
                            }else{
                              transactionRecord = TransactionRecord(
                                id: widget.transactionRecord?.id,
                                date!,
                                transactionRevenueTypes!,
                                transactionExpenseTypes!,
                                isInCash!,
                                additionalInformation!,
                                value!
                              );
                            }
                            widget.save(transactionRecord, isNew);
                          },
                        child: Text(
                          "Simpan",
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                        ],
                      )
                    ))
              ],
            ))
      ],
    ));
  
}
}