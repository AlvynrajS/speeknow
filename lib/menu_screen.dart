// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:speak_now/Linked_device.dart';
import 'package:speak_now/New_broadcast.dart';
import 'package:speak_now/New_group.dart';
import 'package:speak_now/Payments.dart';
import 'package:speak_now/Settings.dart';
import 'package:speak_now/Starred_messages.dart';

class menu_screen extends StatefulWidget {
  const menu_screen({Key? key}) : super(key: key);

  @override
  State<menu_screen> createState() => _menu_screenState();
}

class _menu_screenState extends State<menu_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Menu Screen",
      )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 233, 230, 226),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NewGroupScreen(),
                  ));
                },
                child: Text(
                  "New group",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      height: 1.00,
                      color: (Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NewBroadcastScreen(),
                  ));
                },
                child: Text(
                  "New broadcast",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      height: 1.00,
                      color: (Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LinkedDeviceScreen(),
                  ));
                },
                child: Text(
                  "Linked devices",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      height: 1.00,
                      color: (Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StarredMessagesScreen(),
                  ));
                },
                child: Text("Starred messages",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        height: 1.00,
                        color: (Colors.black))),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PaymentsScreen(),
                  ));
                },
                child: Text(
                  "Paymnets",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      height: 1.00,
                      color: (Colors.black)),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ));
                  },
                  child: Text(
                    "settings",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        height: 1.00,
                        color: (Colors.black)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
