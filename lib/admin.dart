import 'package:flutter/material.dart';
import 'package:startup_namer/admin_approve_reject.dart';
import 'navbar.dart';

class Adminscreen extends StatefulWidget {
  const Adminscreen({Key? key}) : super(key: key);

  @override
  State<Adminscreen> createState() => _AdminscreenState();
}

class _AdminscreenState extends State<Adminscreen> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Text(
                'ADMIN PAGE',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90.0,
                      width: 400.0,
                      color: Colors.transparent,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: new Center(
                            child: new Text(
                              "Total Number of Employee: 150",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150.0,
                  width: 200.0,
                  color: Colors.transparent,
                  child:  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => approve_reject()));
                    },

                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Center(
                        child: new Text(
                          "Employee On Leave",
                          style: TextStyle(fontSize: 22, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
