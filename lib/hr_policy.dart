import 'package:flutter/material.dart';

import 'navbar.dart';
import 'package:open_file/open_file.dart';

class HrPolicy extends StatefulWidget {
  const HrPolicy({Key? key}) : super(key: key);

  @override
  State<HrPolicy> createState() => _HrPolicyState();
}

class _HrPolicyState extends State<HrPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'HR Policy',
                  style: TextStyle(color: Colors.black, fontSize: 35),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('E&S Policy'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        OpenFile.open(
                            "assets/hypocrisy/ES_78-79_001 E&S Policy.docx");
                      },
                    ),
                  ],
                )),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('Salary Advance Policy'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        OpenFile.open(
                            "/assets/hrpolicyfiles/ES_78-79_001 E&S Policy.docx");

                      },
                    ),
                  ],
                )),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('Associate Engagement Committee'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: ()async {
                         await OpenFile.open(
                            "assets/hrpolicyfiles/ES_78-79_001 E&S Policy.docx");
                      },
                    ),
                  ],
                )),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('Upaya Employee Handbook'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        OpenFile.open(
                            "/assets/hrpolicyfiles/ES_78-79_001 E&S Policy.docx");
                      },
                    ),
                  ],
                )),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('Risk Management Committee'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        OpenFile.open(
                            "/assets/hrpolicyfiles/ES_78-79_001 E&S Policy.docx");
                      },
                    ),
                  ],
                )),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('Grievance Redressal Mechanism'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        OpenFile.open(
                            "assets/hrpolicyfiles/ES_78-79_001 E&S Policy.docx");
                      },
                    ),
                  ],
                )),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('Whistle Blowing Policy'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        OpenFile.open(
                            "assets/hrpolicyfiles/ES_78-79_001 E&S Policy.docx");
                      },
                    ),
                  ],
                )),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('Travel Advance Request Form'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        OpenFile.open(
                            "assets/hrpolicyfiles/ES_78-79_001 E&S Policy.docx");
                      },
                    ),
                  ],
                )),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('Leave Request Form'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        OpenFile.open(
                            "assets/hrpolicyfiles/ES_78-79_001 E&S Policy.docx");
                      },
                    ),
                  ],
                )),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('COVID-19 Safety Plan'),
                      style: TextButton.styleFrom(
                        primary: Colors.white70,
                        backgroundColor: Colors.amber,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        OpenFile.open(
                            "assets/hrpolicyfiles/HRD_7879_009 COVID-19 Safety Plan.docx");
                      },
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
     