import 'dart:ffi';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();
  double _currentIndex = 0;
  final List<String> items = List.generate(10, (index) => "Item ${index + 1}");

   @override  
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

void _scrollListener() {
  setState(() {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = 60.0; // Width of each item in the ListView
    final viewportFraction = screenWidth / itemWidth;
    _currentIndex = (_controller.offset / itemWidth) / viewportFraction;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 15, right: 15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 42,
                    width: 42,
                    child: Center(
                        child: Text(
                      "EK",
                      style: TextStyle(fontSize: 20, color: Colors.orange),
                    )),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 88, 85, 85),
                        borderRadius: BorderRadius.circular(21)),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 42,
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.orange,
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 88, 85, 85),
                        borderRadius: BorderRadius.circular(21)),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                "what's your cattle symptoms",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 150,
              // color: Colors.greenAccent,
              child: ListView.builder(
                  controller: _controller,
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 25),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Text("JK")),
                        ),
                        Text("Fever")
                      ],
                    );
                  }),
            ),
            new DotsIndicator(
              dotsCount: items.length,
              position: _currentIndex,
              decorator: DotsDecorator(
                color: Colors.black87, // Inactive color
                activeColor: Colors.redAccent,
              ),
            )
          ],
        ));
  }
}
