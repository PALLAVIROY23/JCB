import 'package:flutter/material.dart';
import 'package:hccb_channel_verse_app/common%20widget/bottomAppBar.dart';

import '../common widget/color extension.dart';

class checklist extends StatefulWidget {
  const checklist({super.key});

  @override
  State<checklist> createState() => _checklistState();
}

class _checklistState extends State<checklist> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Text(
          "Check List",
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
      bottomNavigationBar: MobileFooter(),
      body: Container(

        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10,top: 20),
          child: ListView.separated(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                      height: media.height * 0.1,
                      width: media.width* 0.94,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: HexColor.fromHex("#FBA505"))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                Container(
                                  width:media.width*0.36,
                                  height: 100,
                                  child: Text(
                                    // softWrap: true,
                                      'Engineudsfuidsyfiusyfuisdyfiusdyfiusdyfiusdyfiusdyfiusdyfiudsyfiusdyfiudsy',
                                      style: TextStyle(


                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: HexColor.fromHex("#000000"))),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                                    print("okay");
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(),
                                    child: Container(
                                        height: media.height * 0.03,
                                        width: media.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 1,
                                                color:
                                                    HexColor.fromHex("#00C25E"))),
                                        child: Center(
                                            child: Text(
                                          "okay",
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: HexColor.fromHex("#00C25E")),
                                        ))),
                                  ),
                                ),
                                 SizedBox(
                                  width: media.height * 0.02,
                                ),
                                InkWell(
                                  onTap: () {
                                    print('object');
                                  },
                                  child: Container(
                                      height: media.height * 0.03,
                                      width: media.width * 0.2,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1,
                                              color: HexColor.fromHex("#FD1A2A"))),
                                      child: Center(
                                          child: Text("Not okay",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400,
                                                  color: HexColor.fromHex(
                                                      "#FD1A2A"))))),
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 20);
            },
          ),
        ),
      ),
    );
  }
}
