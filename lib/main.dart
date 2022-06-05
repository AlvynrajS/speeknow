import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:speak_now/menu_screen.dart';

Future<void> main() async {
  runApp(const MyApp());

  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpeakNow',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Speak Now'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 2;

  int? itemIndex;
  // PageController? _pageController;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _pageController = PageController();
  // }
//   late TabController _controller;
// int _selectedIndex = 0;
//   @override
//  void initState() {
//   super.initState();
//   _controller = TabController(length: 5, vsync: TickerProvider);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("SpeakNow"),
          actions: [
            // Padding(
            //   padding: EdgeInsets.only(right: 10.00),
            const Icon(Icons.search),
            // ),
            Padding(
              padding: const EdgeInsets.only(right: 10.00, left: 10.00),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const menu_screen(),
                  ));
                },
                child: const Icon(Icons.menu),
              ),
            )
          ],
          bottom: const TabBar(
            // isScrollable: true,
            padding: EdgeInsets.only(top: 15.00),
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "Chats"),
              Tab(text: "states"),
              Tab(text: "Calls")
            ],
            // onTap: onTabTapped,
            // controller: _pageController;
          ),
        ),
        body: TabBarView(
          children: [
            Row(
              // verticalDirection: VerticalDirection.down,
              // mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.airplane_ticket, color: Colors.red),
                Expanded(
                  child: Text(
                    "This is the simple practice of coding in Flutter by using the Visual Studio",
                    // overflow: TextOverflow.clip,
                  ),
                ),
                Icon(Icons.airplane_ticket, color: Colors.red),
              ],
            ),
            // Container(
            //   color: Colors.green,

            // ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 10, right: 10.00),
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Column(
                  children: [
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                    _buildchatList(),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 10, right: 10.00),
              color: Colors.pink,
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  itemIndex = index + 1;
                  if (index == 6 || index == 12) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.white,
                    );
                  }
                  return _buildchatList();
                },
              ),
            ),
            Container(
              color: Colors.yellowAccent,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return _buildchatList();
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 1,
                      color: Colors.black,
                    );
                  },
                  itemCount: 8),
            )
          ],
        ),

        // PageView(
        //   onPageChanged: onPageChanged,
        //   controller: _Controller,
        //   children: [
        //     Container(color: Colors.cyanAccent),
        //     Container(color: Colors.lightGreen),
        //     Container(color: Colors.lightBlue),
        //     Container(color: Colors.white)
        //   ],
        // ),
        // floatingActionButton:
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.messenger),
        ),
      ),
    );
  }

//   void onPageChanged(int index) {
//     setState(() {
//       _index = index;
//     });
//   }

//   void onTabTapped(int Page) {
//     this; _index = Page;
//     _Controller.animateToPage(Page,
//         duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
//     setState(() {});
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
  Widget _buildchatList() {
    return Padding(
      padding: const EdgeInsets.all(8.00),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            child: Image.asset(
              "assets/rain.jpg",
              width: 45,
              height: 45,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10.00),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "AlwinRaj S",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "<Last Message>${itemIndex ?? 0 + 1}",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Text(
            "09.30 PM",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
