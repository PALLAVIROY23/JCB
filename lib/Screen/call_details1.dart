import 'package:flutter/material.dart';

import '../common widget/color extension.dart';
class CallDetails extends StatefulWidget {
  const CallDetails({super.key});

  @override
  State<CallDetails> createState() => _CallDetailsState();
}

class _CallDetailsState extends State<CallDetails> {
   List Items = [
  {'one'},
    {'two'},
    {'Three'},
    {'four'},
  ];
   String dropdownValue = "Excavator";
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Text(
          "Call Details",
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
      body:  Column(
        children: [

       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
         child: Container(
           height: media.height*0.13,
           width: media.width,
           decoration: BoxDecoration(
             border: Border.all(width: 1.5,color: HexColor.fromHex("#ED9C1A") ),
             borderRadius: BorderRadius.circular(8)
           ),
           child: const Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 15,),
               Padding(
                 padding: EdgeInsets.only(left: 10),
                 child: Text('Caller ID: JCBCL998',
                 style: TextStyle(
                 fontSize: 14, fontWeight: FontWeight.w500),),
               ),
               Padding(
                 padding: EdgeInsets.only(left: 10),
                 child: Text('Customer name : Ajay Sharma',
                 style: TextStyle(
                 fontSize: 10, fontWeight: FontWeight.w400),),
               ),
               Padding(
                 padding: EdgeInsets.only(left: 10),
                 child: Text('Phone Number : 8767788999',
                 style: TextStyle(
                 fontSize: 10, fontWeight: FontWeight.w400),),
               ),
               Padding(
                 padding: EdgeInsets.only(left: 10),
                 child: Text('Machine Details : Excavator',
                 style: TextStyle(
                 fontSize: 10, fontWeight: FontWeight.w400),),
               ),
             ],
           ),
         ),
       ),
          // const SizedBox(height: 20,),
          DropdownMenu(

            width: 353,
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: HexColor.fromHex("#ED9C1A"),)
              ),
              focusColor: HexColor.fromHex("#ED9C1A")
            ),
            enableFilter: true,
            label: const Text("Excavator"),
            onSelected: (excavator){
              if (excavator != null){
                setState(() {
                });
              }
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry( label: "B-tech/Be", value: 'option'),
              DropdownMenuEntry( label: "Audit Start", value: 'optin'),
              DropdownMenuEntry( label: "Caller Id", value: 'verification'),
              DropdownMenuEntry( label: "Call details", value:'code'),

          ],



             )
    ]
      ),
    );
  }
}
