import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget MobileFooter() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    width: double.maxFinite,
    height: 75,
    color: Colors.black,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/images/JCB.png',
              ),
              fit: BoxFit.fill,
              width: 90,
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                           // Get.toNamed(Routes.TERMS_AND_CONDITION);
                            //     arguments: "tnc");
                          },
                          child: const Text(
                            "Term & Conditions   ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "    Privacy Policy",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                const Text(
                  "Copyright 2024 , All rights reserved. | Platform powered by Almond Solutions",
                  style: TextStyle(color: Colors.white, fontSize: 6),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
