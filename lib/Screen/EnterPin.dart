import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../common widget/color extension.dart';
import 'PanCardDetails.dart';
class EnterPin extends StatefulWidget {
  const EnterPin({super.key});

  @override
  State<EnterPin> createState() => _EnterPinState();
}

class _EnterPinState extends State<EnterPin> {
  String enterPin = "";

  get isPinVisible => false;

  Widget numButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (enterPin.length < 6) {
              enterPin += number.toString();
            }
            print("enterPin: $enterPin");
          });
        },
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Image(
                image: AssetImage(
                  "assets/images/JCB.png",
                ),
                height: 44,
                width: 113.22,
              )),
          SizedBox(
            height: 60,
          ),
          Text(
            "Enter PIN",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: HexColor.fromHex("#000000")),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
                "Set your personal 6 digit code, it will be\n            secure and fast sign in",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: HexColor.fromHex("#000000")),
              )),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, (index) {
                return Container(
                  margin: const EdgeInsets.all(6.0),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.circle,
                      color: enterPin.length >= index + 1
                          ? Colors.red
                          : CupertinoColors.inactiveGray),
                );
              })),
          SizedBox(
            height: 10,
          ),
          for (var i = 0; i < 3; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                        (index) => numButton(1 + 3 * i + index),
                  ).toList()),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {}, child: SizedBox()),
                  numButton(0),
                  TextButton(
                      onPressed: () {
                        enterPin = enterPin.substring(0, enterPin.length - 1);
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.backspace_outlined,
                        color: Colors.black,
                        size: 24,
                      )),
                ]
            ),
          ),
          const SizedBox(height: 25,),
          const Text("Forget Pin",style: TextStyle(fontSize:12,fontWeight:FontWeight.w400),),
          const SizedBox(height: 25,),
          Container(
              height: 50,
              width: media.width*0.9,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffFBA505),
              ),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => PanCardDetails())
                );
              }, child: Center(child: Text("Proceed",style: TextStyle(fontSize:16,fontWeight:FontWeight.w500,color:HexColor.fromHex("#23232F"))))))

        ],
      ),

    );
  }
}