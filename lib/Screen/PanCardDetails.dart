import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common widget/color extension.dart';
import 'Profile.dart';
class PanCardDetails extends StatefulWidget {
  const PanCardDetails({super.key});

  @override
  State<PanCardDetails> createState() => _PanCardDetailsState();
}

class _PanCardDetailsState extends State<PanCardDetails> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(child: Image(image: AssetImage("assets/images/JCB.png",),height: 44,
              width: 113.22,)),
            SizedBox(height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 200),
                  child: Text("Pan Card Details",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: HexColor.fromHex("#000000")),),
                ),
                const SizedBox(height: 20,),
                Container(
                  width:media.width*0.9,
                  child: TextField(
                    inputFormatters: [
                      
        
                    ],
                    decoration: InputDecoration(
                        hintText: "Pan Number",
                        hintStyle: TextStyle(fontSize: 14, fontWeight:FontWeight.w400,color: HexColor.fromHex("#747474")),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
        
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width:media.width*0.9,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Name on Pan Card",
                        hintStyle: TextStyle(fontSize: 14, fontWeight:FontWeight.w400,color: HexColor.fromHex("#747474")),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
        
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width:media.width*0.9,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Your UPI Id",
                        hintStyle:TextStyle(fontSize: 14, fontWeight:FontWeight.w400,color: HexColor.fromHex("#747474")),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
        
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage("assets/images/pancard.png"),height: 95,width: 80,),
                    Icon(Icons.check_circle_outline,color: Colors.green,),
                    TextButton(onPressed: (){}, child: Text("Click for Reupload")),
                  ],
                ),
                SizedBox(height: 30,),
                Text("Note: This information is used for pro casting",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),)
              ],
            ),
           SizedBox(height: 20,),
           InkWell(
             onTap: (){
               Navigator.push(context,
                   MaterialPageRoute(
                       builder: (context) => Profile())
               );
             },
             child: Container(
               height: MediaQuery.sizeOf(context).height*0.06,
                 width: media.width*0.8,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: HexColor.fromHex("#FBA505")
                 ),
                 child: Center(child: const Text("Save & Continue ",style: TextStyle(fontSize: 14, fontWeight:FontWeight.w400,color:Color (0xffF747474))))
             ),
           )
        
          ],
        ),
      ),
    );
  }
}