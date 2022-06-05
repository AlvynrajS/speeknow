import 'package:flutter/material.dart';

class photo_detail_screen extends StatefulWidget {
  const photo_detail_screen({Key? key}) : super(key: key);

  @override
  State<photo_detail_screen> createState() => _photo_detail_screenState();
}

class _photo_detail_screenState extends State<photo_detail_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo detail screen"),
      ),
      body: SingleChildScrollView(child: Expanded(child: build(context))),
    );
  }
}
