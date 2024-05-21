import 'package:flutter/material.dart';

import '../common widget/bottomAppBar.dart';
import '../common widget/color extension.dart';
class startVisit extends StatefulWidget {
  const startVisit({super.key});

  @override
  State<startVisit> createState() => _startVisitState();
}

class _startVisitState extends State<startVisit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          "Start Visit",
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
            Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Caller ID: JCBCL998",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
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
                      Divider(
                       height: 40,
                        endIndent: 20,
                      )
                    ],
                    ),
                  );
    },
                
                )
            )
                   
    ]
    )
    );
  }
}
