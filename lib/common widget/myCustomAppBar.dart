import 'package:flutter/material.dart';

import 'color extension.dart';
PreferredSize myCustomAppBarMobile(
    String title, {

      VoidCallback? onPressed,
    }) {
  return PreferredSize(
    preferredSize: Size(200 , 200),
    child: AppBar(

      // backgroundColor: HexColor.fromHex("#FBA505").withOpacity(0.1),
      //foregroundColor: HexColor.fromHex("#FBA505").withOpacity(0.1),
      automaticallyImplyLeading: true,
      flexibleSpace: Container(
        height: 123,
        decoration: BoxDecoration(
          color: HexColor.fromHex("#FBA505"),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),


          // color: Colors.red),

          //     gradient: LinearGradient(colors: [
          //   maincolor,
          //   secondarycolor,
          // ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Image(image: AssetImage("assets/images/jcbimage.png"),height: 37,width: 96),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 10),
          child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.notifications, color: Colors.black38)),
        ),

      ],
      elevation: 0,
    ),
  );
}