
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hccb_channel_verse_app/Home/CallerId.dart';

import '../common widget/bottomAppBar.dart';
import '../common widget/color extension.dart';

class AuditStart extends StatefulWidget {
  AuditStart({super.key});

  @override
  State<AuditStart> createState() => _AuditStartState();
}

class _AuditStartState extends State<AuditStart> {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = TableRow(
        children: [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
            "Engine ancillaries – Controllers, radiator, FIP, alternator, injectors, starter, pulley, belts etc."),
      ),
      Center(
        child: InkWell(
          onTap: (){
            print("object");
          },
          child: Container(
            // height: 40,
            width: 70,
            child: Center(child: Text("okay", style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: HexColor.fromHex("#FFFFFF")))),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),

          ),
        ),
      )
    ]);
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CallerId()));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          "Report Preview",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Machine Type:",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#3D3D3D")),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    "DL45NQ001",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#3D3D3D")),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Machine Model:",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: HexColor.fromHex("#3D3D3D"))),
                  SizedBox(
                    width: 70,
                  ),
                  Text("Hydraulic JCB",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: HexColor.fromHex("#3D3D3D")))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Machine Serial No:",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: HexColor.fromHex("#3D3D3D"))),
                  SizedBox(
                    width: 50,
                  ),
                  Text("Medium Size",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: HexColor.fromHex("#3D3D3D")))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Enter Remark:",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: HexColor.fromHex("#3D3D3D"))),
                  SizedBox(
                    width: 80,
                  ),
                  Text("Enter Remark:",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: HexColor.fromHex("#3D3D3D")))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              //Padding(
              //  padding: const EdgeInsets.only(left: 8),
              Row(
                children: [
                  Text("Check List",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: HexColor.fromHex("#3D3D3D")))
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.05,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: HexColor.fromHex("#FBA505")),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Issue Description",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: HexColor.fromHex("#3D3D3D"))),
                    Text("Status",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: HexColor.fromHex("#3D3D3D"))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Table(

                border: TableBorder(

                  horizontalInside: BorderSide(
                      width: 1,
                      color: Color(0xffFB7B7B7),
                      style: BorderStyle.solid),
                  verticalInside: BorderSide(
                    width: 1,
                    color: Color(0xffFB7B7B7),
                  ),
                  left: BorderSide(color: Color(0xffFB7B7B7), width: 1),
                  right: BorderSide(color: Color(0xffFB7B7B7), width: 1),
                  top: BorderSide(color: Color(0xffFB7B7B7), width: 1),
                  bottom: BorderSide(color: Color(0xffFB7B7B7), width: 1),
                ),
                children: [_tableRow, _tableRow, _tableRow, _tableRow],
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height*0.1,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: HexColor.fromHex("#B7B7B7"))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("Text....",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: HexColor.fromHex("#3D3D3D")),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  Text("Service Visit Report",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),),
                  ]
              ),
                  SizedBox(height: 15,),
                  Container(
                    height: media.height*0.03,
                    width: media.width*3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: HexColor.fromHex("#FBA505")
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Report Type",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),),
                        Text("Status",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),),
                      ],
                    ),
                  ),

                  Table(
                    defaultColumnWidth: FixedColumnWidth(200.0),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          Center(child: Text("Machine Details",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),)),
                          Image(image: AssetImage("assets/images/Rectangle 418.png"),height: 26,width: 16,)
                        ]
                      ),
                      TableRow(
                          children: [
                            Center(child: Text("Complaint Details",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),)),
                            Image(image: AssetImage("assets/images/Rectangle 418.png"),height: 26,width: 16,)

                          ]
                      ),
                      TableRow(
                          children: [
                            Center(child: Text("Service visit Details",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),)),
                            Image(image: AssetImage("assets/images/Group 924.png"),height: 35,width: 16,)

                          ]
                      ),
                      TableRow(
                          children: [
                            Center(child: Text("Confirmation from Customer",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),)),
                            Image(image: AssetImage("assets/images/Group 924.png"),height: 26,width: 16,)

                          ]
                      )
                    ],
                  ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  print("object");
                },
                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.07,
                  width: media.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: HexColor.fromHex("#FBA505")),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 20),
                    child: Text("Download PDF",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),)),
                  ),
              ),
              
                ],
              )

          ),
        ),

    );
  }
}

 
