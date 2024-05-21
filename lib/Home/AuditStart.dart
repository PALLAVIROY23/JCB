import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common widget/bottomAppBar.dart';
import '../common widget/color extension.dart';
class Auditstart1 extends StatefulWidget {
  const Auditstart1({super.key});

  @override
  State<Auditstart1> createState() => _Auditstart1State();
}

class _Auditstart1State extends State<Auditstart1> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
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
      SizedBox(height: 30,),
      Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Check list"),
              Text("Edit Report")
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
                Text("Issue Images",
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
          Table(
            defaultColumnWidth: FixedColumnWidth(115.0),
            border: TableBorder.all(),
            children: [
              TableRow(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                     Text("A.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),
          ),
                  Text("Point 1",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),
                  ) ]),
                    Image(image: AssetImage("assets/images/machine.png"),width: 50,height: 29,),
                    Image(image: AssetImage("assets/images/Rectangle 418.png"),height: 26,width: 16,),
                  ]
              ),
              TableRow(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("B.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),
                          ),
                          Text("Point 2",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),
                          ) ]),
                    Image(image: AssetImage("assets/images/machine.png"),width: 50,height: 29,),
                    Image(image: AssetImage("assets/images/Rectangle 418.png"),height: 26,width: 16,),
                  ]
              ),
              TableRow(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("C.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),
                          ),
                          Text("Point 3",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),
                          ) ]),
                    Image(image: AssetImage("assets/images/machine.png"),width: 50,height: 29,),
                    Image(image: AssetImage("assets/images/Rectangle 418.png"),height: 26,width: 16,),
                  ]
              ),
              TableRow(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("D.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),
                          ),
                          Text("Point 4",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor.fromHex("#3D3D3D")),
                          ) ]),
                    Image(image: AssetImage("assets/images/machine.png"),width: 50,height: 29,),
                    Image(image: AssetImage("assets/images/Rectangle 418.png"),height: 26,width: 16,),
                  ]
              ),

                  ],
                ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Service visit Report"),
              Text("Edit Report")
            ],
          ),
          SizedBox(height: 15,),
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
            defaultColumnWidth: FixedColumnWidth(180.0),
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
          SizedBox(height: 25,),

          InkWell(
            onTap: (){
              print("object");
            },
            child: Container(
                height: MediaQuery.sizeOf(context).height*0.06,
                width: media.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: HexColor.fromHex("#FBA505")),
                child: Center(child: Text("Close",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: HexColor.fromHex("#212121")),))),
          )
      ]
    ),
      ]
    ),
    ),
    )
    );
  }
}
