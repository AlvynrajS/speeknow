import 'package:flutter/material.dart';
import 'package:speak_now/bike_image/bike_image_detail_screen.dart';
// import 'package:speak_now/bike_image/bike_image_detail_screen.dart';

class bike_image_screen extends StatefulWidget {
  const bike_image_screen({Key? key}) : super(key: key);

  @override
  State<bike_image_screen> createState() => _bike_image_screenState();
}

class _bike_image_screenState extends State<bike_image_screen> {
  double opacity = 0.2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bike Images"),
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  opacity = 1;
                });
              },
              child: Text(
                "Show image",
                style: TextStyle(color: Colors.red, fontSize: 16),
              ))
        ],
      ),
      body: AnimatedOpacity(
        duration: Duration(seconds: 3),
        opacity: opacity,
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            buildHeroWidget("1stBike",
                "https://m.media-amazon.com/images/I/617OW8TPOWL._SL1000_.jpg"),
            buildHeroWidget(
              "KTM",
              "https://images.unsplash.com/photo-1449426468159-d96dbf08f19f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bW90b3JiaWtlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
            ),
            buildHeroWidget(
              "Bike 3",
              "https://content3.jdmagicbox.com/comp/chennai/i4/044pxx44.xx44.190318195951.h3i4/catalogue/bikes-bikers-mount-road-chennai-bike-on-rent-1q9mqidfgw.jpg?clr=39392d",
            ),
            buildHeroWidget(
              "Bike 4",
              "https://www.royalenfield.com/content/dam/royal-enfield/india/motorcycles/landing/meteor-thumbnail.jpg",
            ),
            buildHeroWidget(
              "Bike 5",
              "https://i.pinimg.com/736x/67/46/a8/6746a82bc12b706d2dc1fd8e20fcc3ea.jpg",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeroWidget(String tag, String imageUrl) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: (() {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => bike_image_detail_screen(imageUrl, tag)));
        }),
        child: Image.network(
          imageUrl,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null),
            );
          },
        ),
      ),
    );
  }
}
