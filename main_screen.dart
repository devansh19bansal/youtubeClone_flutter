import 'package:flutter/material.dart';
import 'package:youtube/screens/screen1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List Screens = [
    Screen1(),
    Text("shorts"),
    Text("add"),
    Text("subscriptions"),
    Text("profile"),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          "https://t3.ftcdn.net/jpg/05/07/46/84/360_F_507468479_HfrpT7CIoYTBZSGRQi7RcWgo98wo3vb7.jpg",
        ),
        leadingWidth: 150,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.cast_connected_rounded)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notification_add_rounded)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_divider_outlined),
              label: "shorts",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.add), label: " ", backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy),
              label: "subscribers",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.man), label: "You", backgroundColor: Colors.grey)
        ],
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
      body: Screens[currentIndex],
    );
  }
}
