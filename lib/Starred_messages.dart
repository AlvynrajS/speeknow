import 'package:flutter/material.dart';
import 'package:speak_now/clean_code/cleancode_screen.dart';
import 'package:speak_now/firebase_data_screen.dart';

class StarredMessagesScreen extends StatefulWidget {
  const StarredMessagesScreen({Key? key}) : super(key: key);

  @override
  State<StarredMessagesScreen> createState() => _StarredMessagesScreenState();
}

class _StarredMessagesScreenState extends State<StarredMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starred messages"),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.only(right: 10.00, left: 10.00),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => firebase_data_screeen(),
                  ));
                },
                child: Text(
                  "FirebaseData",
                  style: TextStyle(fontSize: 16),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => clean_code_screen(),
                  ));
                },
                child: Text("Clean Code")),
          ],
        ),
      ),
    );
  }
}
