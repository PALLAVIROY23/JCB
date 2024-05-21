// import 'package:flutter/material.dart';
// import '../common widget/color extension.dart';
// class Notification extends StatefulWidget {
//   const Notification({super.key});
//
//   @override
//   State<Notification> createState() => _NotificationState();
// }
//
// class _NotificationState extends State<Notification> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      appBar: AppBar(
//    leading: Icon(Icons.arrow_back_ios_new),
//         title: Text(
//           "Notification",
//           style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//               color: HexColor.fromHex("#000000")),
//         ),
//         toolbarHeight: 109,
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: HexColor.fromHex("#FBA505")),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../common widget/bottomAppBar.dart';
import '../common widget/color extension.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Text(
          "Notification",
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: media.width * 0.06),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Show all",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#454545"))),
                Text("Mark all as read ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#454545")))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => card(media),
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemCount: 10))
          ],
        ),
      ),
    );
  }

  Widget card(Size size) {
    return Container(
      width: size.width,

      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
        blurRadius: 7,blurStyle: BlurStyle.normal,spreadRadius: 0.2,
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 80,
          child: Image(image: AssetImage("assets/images/almonds.ai.png")),
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("We’re Blasting Off",style:  TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: HexColor.fromHex("#212121") )),
              Text("Lorem Ipsum is simply dummy text of the printing and...",style:  TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: HexColor.fromHex("#212121") )),
            ],
          )
          ),
          const SizedBox(width: 80,
            child: Image(image: AssetImage("assets/images/headphone.png")),
          ),
          
        ],
      ),
    );
  }
}
