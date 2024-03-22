import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text("You currently have no notifications "),
        ),
      ),
    );
  }
}