import 'package:flutter/material.dart';

import 'color extension.dart';
class TermsCondition extends StatefulWidget {
  const TermsCondition({super.key});

  @override
  State<TermsCondition> createState() => _TermsConditionState();
}

class _TermsConditionState extends State<TermsCondition> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(title: Text("Terms & Condition",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: HexColor.fromHex("#000000")),),
        leading: const Icon(Icons.arrow_back_ios_new),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1,color: Colors.black38)
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Text("I accept all the",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: HexColor.fromHex("#000000"))),
                  TextButton(onPressed: (){}, child: const Text("Terms & Condition",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,))),
                ],
              ),
              const SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Terms & condition",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  const SizedBox(height: 20,),
                  const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                  const SizedBox(height: 10,),
                  const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation nullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                  const SizedBox(height: 10,),
                  const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                  const SizedBox(height: 15,),
                  Container(
                    height: 50,
                    width: media.width*0.9,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1),
                      color:  const Color(0xffFBA505),
                    ),
                    child: TextButton(onPressed: (){
                    }, child: const Text("Continue",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.black54 ),),),
                  ),
                  const SizedBox(
                    height: 20,
                  )

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}