import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatelessWidget {
  final User? user = FirebaseAuth.instance.currentUser; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: 40,
                width: 50,
                child: const Center(child: Icon(Icons.arrow_back)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 183, 173, 173),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 40),
              child: const CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage("assets/avatar.png"),
                backgroundColor: Colors.white,
              ),
            ),
            const Text(
              "Username",
              style: TextStyle(color: Color.fromARGB(255, 87, 81, 81)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 202, 197, 197))),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  user?.displayName ?? "",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Email",
              style: TextStyle(color: Color.fromARGB(255, 87, 81, 81)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 202, 197, 197))),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  user?.email ?? "",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Phone number",
              style: TextStyle(color: Color.fromARGB(255, 87, 81, 81)),
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 202, 197, 197))),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "+254   798391330",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}
