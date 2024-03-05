import 'package:cattle_desease/authentication/auth_pages/login_page.dart';
import 'package:cattle_desease/authentication/auth_pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 160,
            ),
            const Center(
                child: Text('Cattle disease',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange,
                        fontStyle: FontStyle.italic))),
            const Center(
                child: Text('Prediction App ',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange,
                        fontStyle: FontStyle.italic))),
            const SizedBox(
              height: 30,
            ),
            const Image(
                width: double.maxFinite,
                height: 260,
                image: AssetImage('assets/bb.webp')),
                const SizedBox(height: 35,),
            GestureDetector(
              onTap: (){
                Get.to(LoginPage());
              },
              child: Container(
                height: 50,
                width: 160,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.orange
                ),
                child: const Center(child: Text('Login',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700),)),
              
              
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Get.to(SignUpPage());
              },
              child: const Text('SignUp',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w700)))
          ],
        ),
      ),
    );
  }
}
