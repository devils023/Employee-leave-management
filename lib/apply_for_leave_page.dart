import 'package:flutter/material.dart';
import 'package:startup_namer/dashboard.dart';
import 'package:startup_namer/login.dart';

class RequestSubmitted extends StatefulWidget {
  const RequestSubmitted({Key? key}) : super(key: key);

  @override
  State<RequestSubmitted> createState() => _RequestSubmittedState();
}

class _RequestSubmittedState extends State<RequestSubmitted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/logonew.png",
                                  width: 100.0,
                                )
                              ],
                            )),
                      ),
                      Container(
                        child:Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Wrap(
                              spacing: 20.0,
                              runSpacing: 20.0,
                              children: <Widget>[
                                SizedBox(
                                  width: 700.0,
                                  height: 530.0,
                                  child: Card(
                                    color: Colors.white70,
                                    elevation:2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                        child: Center(
                                          child: Padding(padding: const EdgeInsets.all(8.0),
                                              child: Column( children: <Widget>[
                                                Image.asset(
                                                  "assets/images/logonew.png",
                                                  width: 70.0,
                                                ),
                                                SizedBox(
                                                  height: 20.0,
                                                ),

                                                Text(
                                                  "Employee Leave Management",
                                                  style: TextStyle(
                                                      color: Colors.deepOrangeAccent,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 30.0),
                                                ),
                                                SizedBox(
                                                  height: 60.0,
                                                ),
                                                Text(
                                                  "Your Request For Leave Is Submitteed",
                                                  style: TextStyle(
                                                      color: Colors.deepOrangeAccent,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20.0),
                                                ),
                                                SizedBox(
                                                  height: 60.0,
                                                ),
                                                Text(
                                                  "Thank You",
                                                  style: TextStyle(
                                                      color: Colors.deepOrangeAccent,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20.0),
                                                ),
                                                TextButton(
                                                  child: Text('Close'),
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.deepOrangeAccent,
                                                    backgroundColor: Colors.blue,
                                                    onSurface: Colors.grey,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Dashboard()));

                                                  },
                                                )
                                              ],
                                          ),

                                          ),



                                        ),
                                      ),
                                    ),


                              ],
                            ),
                          ),
                        )
                      )

                  ],
                )))));
  }
}
