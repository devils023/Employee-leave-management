import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:startup_namer/apply_for_leave_page.dart';
import 'package:startup_namer/navbar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DateTime? leaveFrom;
  DateTime? leaveTo;
  late TextEditingController fromDateController;
  late TextEditingController tillDateController;

  @override
  void initState() {
    fromDateController = TextEditingController();
    tillDateController = TextEditingController();
    super.initState();
  }

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
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Icon(
                    //   Icons.menu,
                    //   color: Colors.white,
                    //   size: 52.0,
                    // ),
                    Image.asset(
                      "assets/images/image.png",
                      width: 52.0,
                    )
                  ],
                ),

                Center(
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20.0,
                    children: <Widget>[
                      SizedBox(
                        width: 700.0,
                        height: 130.0,
                        child: Card(
                          color: Colors.amber,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/logonew.png",
                                width: 70.0,
                              ),
                              SizedBox(
                                height: 0.0,
                              ),
                              Text(
                                "Employee Leave Management",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: TextFormField(
                    readOnly: true,
                    controller: fromDateController,
                    onTap: () async {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2030),
                      ).then((value) {
                        // if(value!=null) {
                        setState(() {
                          fromDateController.text = value == null
                              ? ""
                              : DateFormat("EEEE, yyyy - M - dd").format(value);
                          leaveFrom = value;
                        });
                        // }
                      });
                    },
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'From:',
                    ),
                  ),
                ),
                // SizedBox(height: 12.0),
                SizedBox(
                  child: TextFormField(
                    readOnly: true,
                    controller: tillDateController,
                    onTap: () async {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2030),
                      ).then((value) {
                        // if(value!=null) {
                        setState(() {
                          tillDateController.text = value == null
                              ? ""
                              : DateFormat("EEEE, yyyy - M - dd").format(value);
                          leaveTo = value;
                        });
                        // }
                      });
                    },
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Till:',
                    ),
                  ),
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Reason For Leave',
                  ),
                ),

                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child: Text('Apply for leave'),
                        style: TextButton.styleFrom(
                          primary: Colors.white70,
                          backgroundColor: Colors.amber,
                          onSurface: Colors.grey,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RequestSubmitted()));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
