import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hccb_channel_verse_app/common%20widget/bottomAppBar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../common widget/color extension.dart';

class ServiceVisitReport extends StatefulWidget {
  const ServiceVisitReport({super.key});

  @override
  State<ServiceVisitReport> createState() => _ServiceVisitReportState();
}

class _ServiceVisitReportState extends State<ServiceVisitReport> {
  final List mylist = [];
  TextEditingController itemController = TextEditingController();
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

  DateTime selectedDate = DateTime.now();

  //String convertedDateTime = "${TimeOfDay.now().toString()}";
  var isDateSelested = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2025));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        isDateSelested = true;
      });
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
          "Service Visit Report",
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Call ID",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Visit ID",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Fills the Customer Details",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: HexColor.fromHex("#000000")))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Customer Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Customer Mobile Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Registration Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Machine Details",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: HexColor.fromHex("#000000")))
                ],
              ),

              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Machine Type",
                  suffixIcon: IconButton(
                    onPressed: () {
                      getImage();
                    },
                    icon: Image.asset("assets/images/Camera.png"),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Machine Model",
                  suffixIcon: IconButton(
                    onPressed: () {
                      getImage();
                    },
                    icon: Image.asset("assets/images/Camera.png"),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Machine Serial Number",
                  suffixIcon: IconButton(
                    onPressed: () {
                      getImage();
                    },
                    icon: Image.asset("assets/images/Camera.png"),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Engine Model Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Engine Serial Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Complaint Details",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: HexColor.fromHex("#000000")))
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Complaint Date Time",
                  suffixIcon: IconButton(
                      onPressed: () {
                        _selectDate(context);
                        Text(isDateSelested
                            ? DateFormat("dd MMM yy HH MM").format(selectedDate.toLocal())
                            : 'Select date');
                      },
                      icon: Image.asset("assets/images/Calender.png")),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Caller ID",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Raised By",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.allow(
                      (RegExp(r'^[+]*[(]{0,1}[6-9]{1,4}[)]{0,1}[-\s\/0-9]*$'))),
                  FilteringTextInputFormatter.deny(RegExp(r'\s')),
                ],
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Owner/Attendant ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Customer Complaint",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 55, horizontal: 25),
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
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Parts Recommended",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: HexColor.fromHex("#000000"))),
                Container(
                  height: 36,
                  width: 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: HexColor.fromHex("#00D108")),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              scrollable: true,
                              title: const Text('Add Message'),
                              content: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Form(
                                  child: Column(
                                    children: <Widget>[
                                      TextFormField(

                                          decoration: InputDecoration(
                                        labelText: 'Message',
                                        icon: const Icon(Icons.message),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: HexColor.fromHex(
                                                    "#ED9C1A"))),
                                      ),
                                        controller:  itemController,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              actions: [
                                ElevatedButton(
                                    child: const Text("Submit"),
                                    onPressed: () {
                                      print(itemController.text);
                                      if(itemController.text.isNotEmpty){
                                        setState(() {
                                          mylist.add(itemController.text);
                                        });
                                        Navigator.pop(context);
                                      }else{
                                        print("ITEM IS EMPTY");
                                      }

                                      // your code
                                    })
                              ],
                            );
                          }
                          );
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        //  SizedBox(width: 2,),
                        Text("Add",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: HexColor.fromHex("#FFFFFF"))),
                      ],
                    ),
                  ),
                ),
              ]),
              // SizedBox(height: 500,child:  ,),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return Container(
                        height: media.height * 0.06,
                        width: media.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1.5,
                                color: HexColor.fromHex("#ED9C1A"))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Text(mylist[index],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor.fromHex("#3D3D3D"))),
                            ),
                            Container(
                              child: Row(
                                children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.minimize,size: 24,color: HexColor.fromHex("#DC1C29"),)),
                    Text("1",style: TextStyle(fontSize: 15, fontWeight:FontWeight.w500,color: HexColor.fromHex("#3D3D3D"))),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add,size: 24,color: HexColor.fromHex("#00B054"),))


                    ],
                              ),
                            )
                          ],
                        )
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 20);
                  }),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Work Done On Machine ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30, horizontal: 25),
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
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Customer Feedback ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          width: 1, color: HexColor.fromHex("#ED9C1A"))),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30, horizontal: 25),
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
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  print("Sumbit");
                },
                child: Container(
                    height: media.height * 0.06,
                    width: media.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: HexColor.fromHex("#ED9C1A"),
                        border: Border.all(width: 1)),
                    child: Center(
                        child: Text("Sumbit",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: HexColor.fromHex("#212121"))))),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
