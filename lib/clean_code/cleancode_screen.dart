import 'package:flutter/material.dart';

class clean_code_screen extends StatefulWidget {
  const clean_code_screen({Key? key}) : super(key: key);

  @override
  State<clean_code_screen> createState() => _clean_code_screenState();
}

class _clean_code_screenState extends State<clean_code_screen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'Comments',
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {},
          color: Colors.black,
        )
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // the caption of the post
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
