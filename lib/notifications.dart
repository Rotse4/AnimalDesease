import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.grey,
        child: Center(
          child: Text("You currently have no notifications "),
        ),
      ),
    );
  }
}