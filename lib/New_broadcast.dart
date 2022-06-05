import 'package:flutter/material.dart';

class NewBroadcastScreen extends StatefulWidget {
  const NewBroadcastScreen({Key? key}) : super(key: key);

  @override
  State<NewBroadcastScreen> createState() => _NewBroadcastScreenState();
}

class _NewBroadcastScreenState extends State<NewBroadcastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New broadcast"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.00),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 200,
              color: Colors.grey,
              padding: EdgeInsets.only(top: 30, bottom: 50.00),
              margin: EdgeInsets.only(top: 20.00, bottom: 30.00),
              child: Center(
                child: Text(
                  "Welcome to Speak Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.00,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.00),
            child: TextField(
              decoration: InputDecoration(hintText: "Email"),
              style: TextStyle(color: Colors.orange),
              // obscureText: true,
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.00),
            child: TextField(
              decoration: InputDecoration(hintText: "Password"),
              obscureText: true,
              maxLines: 1,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
