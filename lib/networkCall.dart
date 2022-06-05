import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:speak_now/photo.dart';
import 'package:speak_now/photo_detail_screen.dart';
import 'package:speak_now/user.dart';

class network_call_screen extends StatefulWidget {
  const network_call_screen({Key? key}) : super(key: key);

  @override
  State<network_call_screen> createState() => _network_call_screenState();
}

class _network_call_screenState extends State<network_call_screen> {
  late Future<User> userDetail;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userDetail = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network Call"),
      ),
      body: Column(
        children: [
          FutureBuilder<User>(
            future: userDetail,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(
                      "Single object from network call",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Card(
                      color: Colors.cyan,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(snapshot.data!.userId.toString()),
                            Text(snapshot.data!.id.toString()),
                            Text(snapshot.data!.title ?? "")
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "Multiple object from network call",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
          FutureBuilder<List<Photo>>(
            future: fetchPhotos(http.Client()),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('An error has occurred!'),
                );
              } else if (snapshot.hasData) {
                return PhotosList(photos: snapshot.data!);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Future<User> fetchUser() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return User.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  // A function that converts a response body into a List<Photo>.
  List<Photo> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }

  Future<List<Photo>> fetchPhotos(http.Client client) async {
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    // Use the compute function to run parsePhotos in a separate isolate.
    return parsePhotos(response.body);
  }
}

// ignore: non_constant_identifier_names
class PhotosList extends StatelessWidget {
  const PhotosList({Key? key, required this.photos}) : super(key: key);

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                // MaterialApp(builder: (context) => photo_detail_screen()));
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const photo_detail_screen(),
                ));
              },
              child: Image.network(photos[index].thumbnailUrl ?? "",
                  loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null),
                );
              }));
        },
      ),
    );
  }
}
