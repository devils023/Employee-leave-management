import 'package:flutter/material.dart';
import 'navbar.dart';

class approve_reject extends StatefulWidget {
  const approve_reject({Key? key}) : super(key: key);

  @override
  State<approve_reject> createState() => _approve_rejectState();
}

class _approve_rejectState extends State<approve_reject> {
  bool? isApproved;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: ListTile(
              title: Text('Employee Name'),
              subtitle: Text('Department'),
              trailing: isApproved != null
                  ? isApproved!
                      ? Text("Approved")
                      : Text("Rejected")
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          child: Text('Accept'),
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: Colors.white70,
                            onSurface: Colors.grey,
                          ),
                          onPressed: () {
                            setState(()=> isApproved=true);

                          },
                        ),
                        SizedBox(width: 12.0),
                        TextButton(
                          child: Text('Reject'),
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: Colors.white70,
                            onSurface: Colors.grey,
                          ),
                          onPressed: () {
                            setState(()=> isApproved=false);
                          },
                        ),
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}
