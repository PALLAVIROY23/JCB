import 'package:flutter/material.dart';
import 'package:hccb_channel_verse_app/Home/Notification.dart';
import '../Home/CallerId.dart';
import '../Home/InProcess.dart';
import '../Home/Incentiv_History.dart';
import '../Home/StartVisit.dart';
import 'color extension.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: HexColor.fromHex("#FBA505"),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 250,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(BorderSide.none),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 53,
                    width: 57,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        color: HexColor.fromHex("#FFDC9B")
                    ),
                    child: Center(child: Text("AS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: HexColor.fromHex("#FF4D00")),)),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      children: [
                        Text("Abhinav Srivastav",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: HexColor.fromHex("#000000"))),
                        SizedBox(height: 5,),
                        Text("Emp ID - G000504543",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: HexColor.fromHex("#000000"))),
                        SizedBox(height: 10,),
                        Container(
                            height: 35,
                            width: 99,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: HexColor.fromHex("#FFFFFF")

                            ),
                            child: TextButton(onPressed: (){}, child: Text("View Profile",style:TextStyle (fontSize: 12,fontWeight: FontWeight.w400,color: HexColor.fromHex("#000000")))))
                      ]
                  ),
                )
              ],
            ),
          ),
          //  UserAccountsDrawerHeader(
          //  accountEmail: Text('@User'),
          // accountName: Text('user'),
          // currentAccountPicture: CircleAvatar(
          //   backgroundImage: AssetImage("assets/Images/ass.jpeg"),
          //   ),
          // ),
          ListTile(
            leading: Image(image: AssetImage("assets/images/home.png")),
            title: Text("Home"),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Image(image: AssetImage("assets/images/notification.png")),
            title: Text("Notification"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) =>NotificationScreen())
              );
            },
          ),
          ListTile(
            leading: Image(image: AssetImage("assets/images/start visit.png")),
            title: Text("Start Visit"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) =>startVisit ())
              );

            },
          ),
          ListTile(
            leading: Image(image: AssetImage("assets/images/Incentive history.png")),
            title: Text("Incentive History"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => IncentiveHistory())
              );
            },
          ),
          ListTile(
            leading: Image(image: AssetImage("assets/images/TDS certificate.png")),
            title: Text("TDS Certificate"),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Image(image: AssetImage("assets/images/In Process.png")),
            title: Text("In Process"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => InProcess())
              );
            },
          ),
          ListTile(
              leading: Image(image: AssetImage("assets/images/In Process.png")),
              title: Text("Report Preview"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => CallerId())
                );
              }
          ),
          ListTile(
            leading: Image(image: AssetImage("assets/images/Privacy and Policy.png")),
            title: Text("Privecy Policy"),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Image(image: AssetImage("assets/images/Terms and Conditions.png")),
            title: Text("Terms & condition"),
            onTap: ()=>null,
          ),
          ListTile(
            leading:  Image(image: AssetImage("assets/images/Log out.png")),
            title: Text("Log Out"),
            onTap: ()=>null,
          ),
        ],
      ),
    );
  }
}