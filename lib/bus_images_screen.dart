import 'package:flutter/material.dart';

class bus_images_screen extends StatefulWidget {
  const bus_images_screen({Key? key}) : super(key: key);

  @override
  State<bus_images_screen> createState() => _bus_images_screenState();
}

class _bus_images_screenState extends State<bus_images_screen> {
  double opacity = 0.9;
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bus images"),
        ),
        body: GridView.builder(
            itemCount: 50,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              if (index % 2 == 0) {
                return AnimatedContainer(
                  duration: Duration(seconds: 5),
                  color: Colors.orange.withOpacity(0.5),
                  child: Image.network(
                    "https://www.sustainable-bus.com/wp-content/uploads/2019/12/scania-bus4.jpg",
                    // fit: BoxFit.cover,
                  ),
                );
              }
              return AnimatedContainer(
                duration: Duration(seconds: 5),
                child: Image.network(
                  "https://www.sustainable-bus.com/wp-content/uploads/2019/12/scania-bus4.jpg",
                  // fit: BoxFit.cover,
                ),
              );
            }));
  }
}
