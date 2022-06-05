import 'package:flutter/material.dart';

class LinkedDeviceScreen extends StatefulWidget {
  const LinkedDeviceScreen({Key? key}) : super(key: key);

  @override
  State<LinkedDeviceScreen> createState() => _LinkedDeviceScreenState();
}

class _LinkedDeviceScreenState extends State<LinkedDeviceScreen> {
  int _index = 1;
  PageController? _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liked Device"),
      ),
      body: PageView(
        children: [
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              label: "one",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_road),
              label: "Two",
              backgroundColor: Colors.lightGreen),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert),
              label: "Three",
              backgroundColor: Colors.deepOrange),
        ],
      ),
      // DefaultTabController(
      //   length: 3,
      //   child: TabBar(tabs: [
      //     Tab(icon: Icon(Icons.monitor)),
      //     Tab(icon: Icon(Icons.laptop)),
      //     Tab(icon: Icon(Icons.phone)),
      //   ]),
      // ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._index = page;
    });
  }

  void onTabTapped(int index) {
    _index = index;
    _pageController?.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    setState(() {});
  }
}
