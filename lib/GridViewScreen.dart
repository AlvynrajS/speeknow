import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:speak_now/Bike_image_screen.dart';
import 'package:speak_now/bike_image/bike_image_screen.dart';
import 'package:speak_now/bus_images_screen.dart';
import 'package:speak_now/car_image_screen.dart';

class gridview_screen extends StatefulWidget {
  const gridview_screen({Key? key}) : super(key: key);

  @override
  State<gridview_screen> createState() => _gridview_screenState();
}

class _gridview_screenState extends State<gridview_screen> {
  double opacity = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gallery"),
        ),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => bike_image_screen(),
                ));
              },
              child: Container(
                width: (MediaQuery.of(context).size.width) / 3,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        "https://m.media-amazon.com/images/I/51WRaOtap-L._SX355_.jpg",
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                                color: Colors.orange,
                                backgroundColor: Colors.white,
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null),
                          );
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Bike Images",
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                  clipBehavior: Clip.hardEdge,
                ),
                color: Colors.blue,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => car_image_screen(),
                ));
              },
              child: Container(
                width: (MediaQuery.of(context).size.width) / 3,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        "https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNhcnN8ZW58MHx8MHx8&w=1000&q=80",
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                                color: Colors.orange,
                                backgroundColor: Colors.white,
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null),
                          );
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Car Images",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                  clipBehavior: Clip.hardEdge,
                ),
                color: Colors.blue,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => bus_images_screen(),
                ));
              },
              child: Container(
                child: Stack(children: [
                  Positioned.fill(
                    child: Container(
                      child: Image.network(
                        "https://static.toiimg.com/thumb/msid-87414740,width-1070,height-580,imgsize-56880,resizemode-75,overlay-toi_sw,pt-32,y_pad-40/photo.jpg",
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                                color: Colors.orange,
                                backgroundColor: Colors.white,
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null),
                          );
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Bus Images",
                        style: TextStyle(color: Colors.white),
                      ))
                ]),
                color: Colors.green,
              ),
            ),
            Stack(children: [
              Positioned.fill(
                child: Container(
                  child: Image.network(
                    "https://akm-img-a-in.tosshub.com/aajtak/images/story/202104/indian_railways_summer-sixteen_nine.jpg?size=948:533",
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                            color: Colors.orange,
                            backgroundColor: Colors.white,
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null),
                      );
                    },
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Train Images",
                    style: TextStyle(color: Colors.white),
                  ))
            ]),
            Stack(children: [
              Positioned.fill(
                child: Container(
                  child: Image.network(
                    "https://images.moneycontrol.com/static-mcnews/2021/09/Air-India.jpg?impolicy=website&width=770&height=431",
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                            color: Colors.orange,
                            backgroundColor: Colors.white,
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null),
                      );
                    },
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black,
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Filght Images",
                    style: TextStyle(color: Colors.white),
                  ))
            ])
          ],
        )

        // GridView.builder(
        //     itemCount: 30,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 3),
        //     itemBuilder: (context, index) {
        //       return Container(
        //         child: Image.network(
        //           "https://m.media-amazon.com/images/I/617OW8TPOWL._SL1000_.jpg",
        //           fit: BoxFit.cover,
        //         ),
        //         // margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        //         color: Colors.grey,
        //         height: 35,
        //       );
        //     })
        );
  }
}
