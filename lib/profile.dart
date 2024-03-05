import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 40),
        // color: Colors.grey,
        width: double.maxFinite,

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
                  
                  child: Center(child: Icon(Icons.arrow_back)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 183, 173, 173),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 40),
              // height: 200,
              // width: 120,
              // width: 200,
              child: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(
                  "assets/avatar.png",
                ),
                backgroundColor: Colors.white,
              ),
            ),
            Text("Full name", style: TextStyle(color:  Color.fromARGB(255, 87, 81, 81)),),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 50,
              width: double.maxFinite,
              decoration:
                  BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 202, 197, 197))),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Eric Njoroge Nganga",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Enter email", style: TextStyle(color: const Color.fromARGB(255, 87, 81, 81)),),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 50,
              width: double.maxFinite,
              decoration:
                  BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 202, 197, 197))),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text(
                "Eric@gmail.com",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Phone number", style: TextStyle(color: const Color.fromARGB(255, 87, 81, 81)),),
            Container(
              height: 50,
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 10),
              decoration:
                  BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 202, 197, 197))),
              child: Align(
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
