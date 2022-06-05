import 'package:flutter/material.dart';

class headerSection extends StatelessWidget {
  const headerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Row(
        // info of the user uploader of the post
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // the poster pic
          _buildCircle(),
          SizedBox(width: 20),
          _richtext(),
        ],
      ),
    );
  }

  Widget _richtext() {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'DEXTER',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: " "),
              TextSpan(
                  text: 'This is caption',
                  style: TextStyle(color: Colors.black)),
              // the time
              TextSpan(text: "."),
            ])),
            SizedBox(height: 6),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'TIME', style: TextStyle(color: Colors.grey[500]))
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCircle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(1),
          alignment: Alignment.center,
          child: Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(height: 40, width: 40, color: Colors.red),
            ),
          ),
        )
      ],
    );
  }
}
