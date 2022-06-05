import 'package:flutter/material.dart';

class NewGroupScreen extends StatefulWidget {
  const NewGroupScreen({Key? key}) : super(key: key);

  @override
  State<NewGroupScreen> createState() => _NewGroupScreenState();
}

class _NewGroupScreenState extends State<NewGroupScreen> {
  int _newGroup = 0;
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
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("New group"),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Add Participants",
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.00),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: PageView(
        children: [
          Container(color: Colors.orange),
          Container(color: Colors.white),
          Container(color: Colors.black),
          Container(color: Colors.grey),
          Container(
            color: Colors.indigo,
          ),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: onTabTapped,
        currentIndex: _newGroup,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.accessible_forward, color: Colors.orange),
            label: "Man",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bike_scooter, color: Colors.green),
            label: "Bike",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental_outlined, color: Colors.black),
            label: "Car",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.bus_alert, color: Colors.red),
          //   label: "B",
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.train, color: Colors.yellow),
          //   label: "T",
          // ),
        ],
      ),
    );
  }

  void onTabTapped(int newGroup) {
    _newGroup = newGroup;
    _pageController?.animateToPage(newGroup,
        duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
    setState(() {});
  }

  void onPageChanged(int page) {
    setState(() {
      _newGroup = page;
    });
  }
}
