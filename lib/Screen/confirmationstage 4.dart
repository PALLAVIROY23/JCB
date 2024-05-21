
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../common widget/color extension.dart';
class ConfirmationStage extends StatefulWidget {
  const ConfirmationStage({super.key});

  @override
  State<ConfirmationStage> createState() => _ConfirmationStageState();
}

class _ConfirmationStageState extends State<ConfirmationStage> {
  DateTime now = DateTime.now();
  var imagePicker = ImagePicker();
  Uint8List? selectedImage;
   getImage() async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() async {
      if (pickedFile != null) {
        selectedImage  = await pickedFile.readAsBytes();
       setState(()  {});
      } else {
        print('No image selected.');
      }
    });
  }




  get value => String;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          "Confiration",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Customer Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1, color: Color(0xffED9C1A),))),
              ),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Customer Mobile Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1, color: Color(0xffED9C1A),))),
              ),
              const SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Upload Your photo",
                    suffixIcon: IconButton(onPressed: () {
                      getImage();
                    }, icon: const Icon(Icons.camera_alt),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1, color: Color(0xffED9C1A),))),

              ),

              selectedImage!=null?Image.memory(selectedImage!,height: 100,width: 100,):SizedBox(),

              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Date and Time",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1, color: Color(0xffED9C1A),))),
              ),

              // TextField(
              //   decoration: InputDecoration(
              //       focusedBorder: OutlineInputBorder(
              //         borderSide: const BorderSide(
              //             color: Color(0xffED9C1A), width: 2.0),
              //         borderRadius: BorderRadius.circular(10.0),
              //       ),
              //
              //       enabledBorder: OutlineInputBorder(
              //         borderSide: const BorderSide(
              //             color: Color(0xffED9C1A), width: 2.0),
              //         borderRadius: BorderRadius.circular(10.0),
              //       ),
              //       labelText: "Date & Time",
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10),
              //           borderSide: const BorderSide(
              //             width: 1, color: Color(0xffED9C1A),))),
              // ),
              const SizedBox(
                height: 20,
              ),
              Row(
                  children: [ Text(
                    "E-Signing",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: HexColor.fromHex("#3D3D3D")),
                  ),
                  ]
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: media.height * 0.1,
                    width: media.width * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5, color: HexColor.fromHex("#ED9C1A"))),
                    child: const Image(
                        image: AssetImage("assets/images/sign image.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Engineer Signature",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: HexColor.fromHex("#3D3D3D")),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    height: media.height * 0.06,
                    width: media.width * 0.88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor.fromHex("#FBA505")),
                    child: Center(
                        child: Text("Send OTP",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: HexColor.fromHex("#3D3D3D"))))),
              ),
              const SizedBox(height: 30,),
              Container(
                  width: media.width,
                  decoration: const BoxDecoration(),
                  child: TextField(

                      decoration: InputDecoration(
                        hintText: "Enter OTP",
                        suffixIcon: button(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          wt: media.width * 0.3,
                          ht: 60,
                          title: "Submit",
                          onPress: () {

                          },

                          decoration: BoxDecoration(
                              color: HexColor.fromHex("#ED9C1A"),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        suffixStyle:TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffED9C1A),
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
      ),

    );
  }


  Widget button({double? ht,
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

//   Future<void> _pickImageFromGallery() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? pickedImage =
//     await _picker.pickImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       // setState(() {
//       //   _selectedImage = pickedImage;
//       // });
//     }
//   }
// }

