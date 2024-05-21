import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hccb_channel_verse_app/common%20widget/bottomAppBar.dart';
import 'package:image_picker/image_picker.dart';

import '../common widget/color extension.dart';
class QuotationDetails extends StatefulWidget {
  const QuotationDetails({super.key});

  @override
  State<QuotationDetails> createState() => _QuotationDetailsState();
}

class _QuotationDetailsState extends State<QuotationDetails> {
  var imagePicker = ImagePicker();
  Uint8List? selectedImage;

  getImage() async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() async {
      if (pickedFile != null) {
        selectedImage = await pickedFile.readAsBytes();
        setState(() {});
      } else {
        print('No image selected.');
      }
    });
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
          "Quotation Details",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter Estimate Amount",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        width: 1, color: HexColor.fromHex("#ED9C1A"))),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                fillColor: HexColor.fromHex("#ED9C1A"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: HexColor.fromHex("#ED9C1A"),
                    width: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Upload Purchased parts invoice",
                suffixIcon: IconButton(
                  onPressed: () {
                    getImage();
                  },
                  icon: Image.asset("assets/images/GreenUploadIcon.png"),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        width: 1, color: HexColor.fromHex("#ED9C1A"))),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                fillColor: HexColor.fromHex("#ED9C1A"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: HexColor.fromHex("#ED9C1A"),
                    width: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Upload lubricant invoice",
                suffixIcon: IconButton(
                  onPressed: () {
                    getImage();
                  },
                  icon: Image.asset("assets/images/BlackUploadIcon.png"),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        width: 1, color: HexColor.fromHex("#ED9C1A"))),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                fillColor: HexColor.fromHex("#ED9C1A"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: HexColor.fromHex("#ED9C1A"),
                    width: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Upload Service Visit Report",
                suffixIcon: IconButton(
                  onPressed: () {
                    getImage();
                  },
                  icon: Image.asset("assets/images/BlackUploadIcon.png"),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        width: 1, color: HexColor.fromHex("#ED9C1A"))),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                fillColor: HexColor.fromHex("#ED9C1A"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: HexColor.fromHex("#ED9C1A"),
                    width: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70,),
            InkWell(
              onTap: () {},
              child: Container(
                  height: media.height * 0.07,
                  width: media.width*0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: HexColor.fromHex("#FBA505"),
                     ),
                  child: Center(
                      child: Text("Sumbit",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: HexColor.fromHex("#212121"))))),
            ),

          ],
        ),
      ),
    );
  }
}
