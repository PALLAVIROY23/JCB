import 'package:flutter/material.dart';
import 'package:hccb_channel_verse_app/Home/Audit_Start.dart';
import 'package:hccb_channel_verse_app/common%20widget/color%20extension.dart';

import '../common widget/bottomAppBar.dart';

class CallerId extends StatefulWidget {
  const CallerId({super.key});

  @override
  State<CallerId> createState() => _CallerIdState();
}

class _CallerIdState extends State<CallerId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new),
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
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
                child: Container(
                    height: MediaQuery.of(context).size.height * .18,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: const Color(0xffED9C1A)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 3),
                              child: Text(
                                "Caller ID: JCBCL998",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 3),
                              child: Text(
                                "Customer name : Ajay Sharma",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor.fromHex("#5B5B5B")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 3),
                              child: Text(
                                "Phone Number : 8767788999",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor.fromHex("#5B5B5B")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 5),
                              child: Text(
                                "Machine Details : Excavator",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor.fromHex("#5B5B5B")),
                              ),
                            ),
                            Container(
                                height: 43,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(13),
                                        bottomRight: Radius.circular(13)),
                                    color: HexColor.fromHex("#FBA505")),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => AuditStart()));
                                    },
                                    child: const Text(
                                      "View Report",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff212121)),
                                    )))
                          ]),
                    )),
              );
            }
            )
    );
  }
}
