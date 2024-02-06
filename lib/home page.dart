import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 15, right: 15),
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 127, 191, 129)
          ),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              color: Colors.amber,
            )
          ],
        ),
        )
      ],
    )
    );
  }
}