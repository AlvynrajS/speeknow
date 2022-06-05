import 'package:flutter/material.dart';

class car_image_screen extends StatefulWidget {
  const car_image_screen({Key? key}) : super(key: key);

  @override
  State<car_image_screen> createState() => _car_image_screenState();
}

class _car_image_screenState extends State<car_image_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Car Images"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Container(
              child: Image.network(
                "https://media.istockphoto.com/photos/generic-modern-suv-car-in-concrete-garage-picture-id1307086567?b=1&k=20&m=1307086567&s=170667a&w=0&h=NjcM6LIOkmfhyqH-zrbFU7pHCPxIABvNhWaOElm_P-E=",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.network(
                "https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.network(
                "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.network(
                "https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.network(
                "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                fit: BoxFit.cover,
              ),
            )
          ],
        ));
  }
}
