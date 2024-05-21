import 'package:flutter/material.dart';
import '../common widget/color extension.dart';
import 'Terms&Condition.dart';
class PolicyPage extends StatefulWidget {
  const PolicyPage({super.key});

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  var _isChecked = false;
  var _isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Policy Page",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: HexColor.fromHex("#000000")),),
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                const Text("I agree to the"),
                const SizedBox(
                  width: 05,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) =>TermsCondition())
                      );
                    },
                    child: const Text(
                      'terms and conditions',
                      style: TextStyle(
                          fontSize: 16.0, color: Colors.lightBlue),
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: 10,),
        Row(
          children: [
            Checkbox(
              value: _isChecked2,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked2 = value!;
                });
              },
            ),
            const Text("I accept "),
            const SizedBox(
              width: 05,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                },
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.lightBlue),
                ),
              ),
            ),
          ],
        ),




          ],
        ),
      )
    );
  }
}