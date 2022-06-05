import 'package:flutter/material.dart';

class examplescreen extends StatelessWidget {
  const examplescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.airplane_ticket,
          color: Colors.white,
        ),
        Text(
            "This is the simple practice of coding in Flutter by using the Visual Studio"),
        Icon(
          Icons.airplane_ticket,
          color: Colors.white,
        ),
      ],
    );
  }
}
