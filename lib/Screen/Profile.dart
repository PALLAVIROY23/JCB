import 'package:flutter/material.dart';

import '../common widget/color extension.dart';
import 'PolicyPage.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(title: const Text("Profile"),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: const Color(0xffFBA505),

        ),
        backgroundColor:const Color(0xffFBA505) ,
        body: Card(
          margin: const EdgeInsets.fromLTRB(0.1,90,0.1,2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            //  Text("Engineer Name",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: HexColor.fromHex("#000000")),),
            //  SizedBox(height: 10,),
            //  Text("Gaurav Bagga",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: HexColor.fromHex("#000000")),),
           //   SizedBox(height: 15,),
           //   Text("Engineer ID: JCB2365XX",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: HexColor.fromHex("#000000")),),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      width: media.width*0.9,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Engineer  Mobile ",
                            hintStyle: TextStyle(fontSize: 14, fontWeight:FontWeight.w400,color: HexColor.fromHex("#747474")),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: media.width*0.9,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Dealer Name",
                            hintStyle: TextStyle(fontSize: 14, fontWeight:FontWeight.w400,color: HexColor.fromHex("#747474")),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: media.width*0.9,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Dealear ID",
                            hintStyle: TextStyle(fontSize: 14, fontWeight:FontWeight.w400,color: HexColor.fromHex("#747474")),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Row(
                        children: [
                          Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1,color: HexColor.fromHex("#929292"))
                              ),
                              child: TextButton(onPressed: (){}, child: const Text("Edit Profile"))),
                          const SizedBox(width: 180,),
                          Text("Proceed",style:TextStyle(fontSize: 14, fontWeight:FontWeight.w400,color: HexColor.fromHex("#000000"))),
                          const SizedBox(width: 5,),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: const Color(0xffFBA505)),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: IconButton(onPressed: () {

                                 Navigator.push(context,
                                 MaterialPageRoute(
                                 builder: (context) =>const PolicyPage ())
                    );
                            },icon: const Icon(Icons.arrow_forward_ios), ),

                          )

                        ]
                    )

                  ],

                ),
              )

            ],
          ),
        )
    );
  }

}