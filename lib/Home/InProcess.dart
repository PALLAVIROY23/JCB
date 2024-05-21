import 'package:flutter/material.dart';

import '../common widget/bottomAppBar.dart';
import '../common widget/color extension.dart';
class InProcess extends StatefulWidget {
  const InProcess({super.key});

  @override
  State<InProcess> createState() => _InProcessState();
}

class _InProcessState extends State<InProcess> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          "In Process",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Search Caller Id",
                prefixIcon:Image.asset("assets/images/Vector.png"),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: HexColor.fromHex("#ABABAB"), width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: HexColor.fromHex("#ABABAB"), width: 1.0),
                ),
              ),

            ),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  const Text( "Caller ID: JCBCL998",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),),
                  Text(
                    "Customer name : Ajay Sharma",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#5B5B5B")),
                  ),
                  Text(
                    "Phone Number : 8767788999",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#5B5B5B")),
                  ),
                  Text(
                    "Machine Details : Excavator",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#5B5B5B")),
                  ),
                ],
              ),
              TextButton(onPressed: (){}, child:Text("Pending",style: TextStyle(fontSize:14,fontWeight: FontWeight.w400,color: HexColor.fromHex("#DC1C29")),))
            ],
          ),
          const Divider(
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  const Text( "Caller ID: JCBCL998",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),),
                  Text(
                    "Customer name : Ajay Sharma",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#5B5B5B")),
                  ),
                  Text(
                    "Phone Number : 8767788999",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#5B5B5B")),
                  ),
                  Text(
                    "Machine Details : Excavator",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#5B5B5B")),
                  ),
                ],
              ),
              TextButton(onPressed: (){}, child:Text("Pending",style: TextStyle(fontSize:14,fontWeight: FontWeight.w400,color: HexColor.fromHex("#DC1C29")),))
            ],
          ),
     
                   


        ],
      ),

    );
  }
}
