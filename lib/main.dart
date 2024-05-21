import 'package:flutter/material.dart';
import 'Home/AuditStart.dart';
import 'Home/InProcess.dart';
import 'Home/Incentiv_History.dart';
import 'Home/Notification.dart';
import 'Home/service_visit_report8.dart';
import 'Screen/Create Pin.dart';
import 'Screen/Login.dart';
import 'Screen/Quotation Details9.dart';
import 'Screen/call_details1.dart';
import 'Screen/checklistS3.dart';
import 'Screen/confirmation5.dart';
import 'Screen/confirmationstage 4.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        // useMaterial3: false,
      ),
       home:const Login()//CallDetails()//checklist()// ConfirmationStage()//Auditstart1()//Login()//ConfirmationStage()//Confiramation()// CreatePin()//InProcess()
    );
  }
}

