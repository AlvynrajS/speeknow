import 'package:flutter/material.dart';

class bike_image_detail_screen extends StatefulWidget {
  bike_image_detail_screen(this.imageUrl, this.tag, {Key? key})
      : super(key: key);
  String imageUrl;
  String tag;

  @override
  State<bike_image_detail_screen> createState() =>
      _bike_image_detail_screenState();
}

class _bike_image_detail_screenState extends State<bike_image_detail_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bike image details"),
        ),
        body: Hero(tag: widget.tag, child: Image.network(widget.imageUrl)));
  }
}
