import 'dart:io' ;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../common widget/color extension.dart';

class Confiramation extends StatefulWidget {
  const Confiramation({super.key});

  @override
  State<Confiramation> createState() => _ConfiramationState();
}

class _ConfiramationState extends State<Confiramation> {
  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();
  @override
  void initState() {
    super.initState();
  }

  void _clearCanvas() {
    signatureGlobalKey.currentState!.clear();
  }

  void _saveImage() async {
    final data = await signatureGlobalKey.currentState!.toImage(
        pixelRatio: 3.0);

    var ui;
    final bytes = await data.toByteData(format: ui.ImageByteFormat.png);

    Directory? directory;
    if (Platform.isAndroid) {
      directory = await getExternalStorageDirectory();
    } else if (Platform.isIOS) {
      directory = await getApplicationDocumentsDirectory();
    }

    if (directory != null) {
      File file = File('${directory.path}/signature.png');
      await file.writeAsBytes(bytes!.buffer.asUint8List());

print('object');

      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) =>
              SignatureImage(bytes: bytes.buffer.asUint8List()),
        ),
      );
    } else {
      print('Failed to access external storage directory.');
    }
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
          "Confirmation",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                 // focusColor: Color(0xffED9C1A),
                  enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
                  fillColor: const Color(0xffED9C1A),
                    labelText: "Engineer Name",
                  border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(width: 1, color: Color(0xffED9C1A)))

    /* focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide()

                    ),
                   disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.orange)
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.orange)
                    )*/
                    ),

              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Engineer Mobile Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1, color: Color(0xffED9C1A)))),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Upload Your photo",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 1, color: Color(0xffED9C1A),))),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
    borderRadius: BorderRadius.circular(10.0),
    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Date & Time",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xffED9C1A),))),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffED9C1A), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Machine Location",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 1, color: Color(0xffED9C1A),),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "E-Signing",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: HexColor.fromHex("#3D3D3D")),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                children: [
                Container(
                  height: media.height*0.2,
                width: media.width*0.5,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.grey)),
                child: SfSignaturePad(
                key: signatureGlobalKey,
                backgroundColor: Colors.white,
                strokeColor: Colors.black,
                minimumStrokeWidth: 1.5,
                maximumStrokeWidth: 5.0)),


                  const Text("Engineer Signature")

    ]
          ),
              const SizedBox(height: 5,),

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
              ElevatedButton(
              onPressed: _saveImage,
              child: const Text('Save Image'),
              ),
              ElevatedButton(
              onPressed: _clearCanvas,
              child: const Text('Clear'),
              )
              ]),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {},
                child: Container(
                    height: media.height * 0.06,
                    width: media.width * 0.88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor.fromHex("#FBA505")),
                    child: Center(
                        child: Text("Proceed",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: HexColor.fromHex("#3D3D3D"))))),
              ),
              SizedBox(height: 30,),


              ]),




    )
      )
    );
  }
}
class SignatureImage extends StatelessWidget {
  final Uint8List bytes;

  SignatureImage({required this.bytes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Saved in Gallery')),
      body: Center(
        child: Container(
          color: Colors.grey[300],
          child: Image.memory(bytes),
        ),
      ),
    );
  }
}

