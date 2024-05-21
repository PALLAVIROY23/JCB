
import 'package:flutter/material.dart';
import 'package:hccb_channel_verse_app/common%20widget/color%20extension.dart';
import 'package:intl/intl.dart';

import '../common widget/bottomAppBar.dart';
class IncentiveHistory extends StatefulWidget {
  const IncentiveHistory({super.key});

  @override
  State<IncentiveHistory> createState() => _IncentiveHistoryState();
}

class _IncentiveHistoryState extends State<IncentiveHistory> {
  DateTime selectedDate = DateTime.now();
var isDateSelested = false;
Future<void> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2025));
  if (picked != null && picked != selectedDate) {
    setState(() {
      selectedDate = picked;
      isDateSelested = true;
    });
  }
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new),
          title: Text(
            "Incentive History",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: HexColor.fromHex("#000000")),
          ),
          toolbarHeight: 109,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor.fromHex("#FBA505")),
          ),
        ),
        bottomNavigationBar:MobileFooter() ,
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
        Text("Incentive History"),
                Text("${selectedDate.toLocal()}".split(' ')[0]),
                const SizedBox(height: 20.0,),
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child:  Text(isDateSelested?'${DateFormat("dd MMM yy").format(selectedDate.toLocal())}':  'Select date'),
                ),
             // ElevatedButton(
         //   onPressed: ()async{
           //   var datePicked = await showDatePicker(

             //   context: context,
               // initialDate: DateTime.now(),
                //firstDate: DateTime(2000),
                //lastDate: DateTime.now(),
             // );
              //if(datePicked!= null ){
               // print(datePicked);
              //}

              //print(datePicked.toString());
            //}, child: Text("Show Date")),
        ]
                ),
            SizedBox(height: 30,),
            Table(
              border: TableBorder(
                verticalInside: BorderSide(width: 1,color: HexColor.fromHex("#D0D0D0")),
                left: BorderSide(color: Color(0xffFB7B7B7), width: 1),
                right: BorderSide(color: Color(0xffFB7B7B7), width: 1),
                top: BorderSide(color: Color(0xffFB7B7B7), width: 1),
                bottom: BorderSide(color: Color(0xffFB7B7B7), width: 1),
              ),
              defaultColumnWidth: FixedColumnWidth(95.0),
              children: [
                TableRow(
                  children: [
                    Center(child: Text("Call ID",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: HexColor.fromHex("#0B0903")),)),
                    Center(child: Text("Payment Estimate",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: HexColor.fromHex("#0B0903")))),
                    Center(child: Text("Amount",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: HexColor.fromHex("#0B0903")))),
                    Center(child: Text("Payment Status",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: HexColor.fromHex("#0B0903")))),
                  ]
                ),
                TableRow(
                    children: [
                      Center(child: Text("JCBCL998",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: HexColor.fromHex("#212121")))),
                      Center(child: Text("2000/-",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: HexColor.fromHex("#212121")))),
                      Center(child: Text("Rs.1500 ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: HexColor.fromHex("#212121")))),
                      Center(child: Text("Received",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: HexColor.fromHex("#212121")))),
                    ]
                ),
                TableRow(
                    children: [
                      Center(child: Text("JCBCL998",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: HexColor.fromHex("#212121")))),
                      Center(child: Text("2000/-",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: HexColor.fromHex("#212121")))),
                      Center(child: Text("Rs.1500 ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: HexColor.fromHex("#212121")))),
                      Center(child: Text("Pending",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: HexColor.fromHex("#212121")))),
                    ]
                ),
              ],
            )

              ],
            ),
      )




        
        


    );
  }
}


