import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hccb_channel_verse_app/common%20widget/dropdown.dart';

import '../common widget/color extension.dart';
import 'Create Pin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  String dropdownValue = "Language";
  TextEditingController _phonenumber = TextEditingController();
  String _mobilenumber = '';

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/jcbimage.png"),
                              fit: BoxFit.fill)),
                      height: media.height * 0.3,
                      width: media.width,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: media.height * 0.2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              end: Alignment.bottomCenter,
                              begin: Alignment.topCenter,
                              colors: [
                                Colors.yellow.withOpacity(0.3),
                                Colors.yellow.withOpacity(0.3)
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: media.width * .06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Proceed With Your Login",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff2F2F2F)),
                            ),
                          ),
                          SizedBox(width: 20),
                          myDropDown(
                            media,
                            ["English", "Hindi"],
                            "English",
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            icon: Icons.g_translate,
                            dropDownIconColor: HexColor.fromHex("#FBA505"),
                            onChanged: (e) {},
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: HexColor.fromHex("#DEDEDE"),
                            ),
                            unselecttextstyle: const TextStyle(color: Colors.black),
                            selecttextstyle: TextStyle(color: Colors.black),
                            heigth: 40,
                            width: 120,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Login",
                        style:TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFBA505)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: media.width,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10),
                            FilteringTextInputFormatter.digitsOnly,
                            FilteringTextInputFormatter.allow((RegExp(
                                r'^[+]*[(]{0,1}[6-9]{1,4}[)]{0,1}[-\s\/0-9]*$'))),
                            FilteringTextInputFormatter.deny(RegExp(r'\s')),
                          ],
                          decoration: InputDecoration(
                              suffixIcon: button(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                wt: media.width * 0.3,
                                ht: 60,
                                title: "Send OTP",
                                onPress: () {
                                  if (_mobilenumber.isEmpty) {
                                    // Perform action (send OTP) only if mobile number is not empty
                                   print('Send OTP');
                                  } else {
                                    // Show error message or handle empty mobile number case
                                    print('Mobile number is empty');
                                  }

                                },

                                decoration: BoxDecoration(
                                    color: HexColor.fromHex("#FBA505"),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            isDense: true,
                           // hintText: "Mobile Number",

                              hintText: "  Enter Mobile No.",
                              contentPadding: EdgeInsets.zero,
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff555555),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),

                          ),
                          controller: _phonenumber,

                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Resend OTP",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFBA505),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: media.width,
                          decoration: BoxDecoration(),
                          child: TextField(

                              decoration: InputDecoration(
                                  hintText: "Enter OTP",
                                  suffixIcon: button(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    wt: media.width * 0.3,
                                    ht: 60,
                                    title: "Verify",
                                    onPress: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(
                                              builder: (context) =>CreatePin())
                                      );
                                    },

                                    decoration: BoxDecoration(
                                        color: HexColor.fromHex("#A8A8A8"),
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                  suffixStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff555555),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),

                              )
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget button(
      {double? ht,
        double? wt,
        Color? bg,
        String title = '',
        EdgeInsets? padding,
        Function()? onPress,
        TextStyle? style,
        Decoration? decoration}) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: wt,
        height: ht,
        padding: padding,
        decoration: decoration,
        child: Center(
          child: Text(
            title,
            style: style,
          ),
        ),
      ),
    );
  }
}

