

import 'package:cattle_desease/authentication/auth_pages/signup_page.dart';
import 'package:cattle_desease/authentication/controllers/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 140,
            ),
            const Text(
              '    Login',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.5))
                  ]),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.lightBlue,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.5))
                  ]),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    prefixIcon: const Icon(
                      Icons.password,
                      color: Colors.lightBlue,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const SizedBox(height: 30,),
             Center(
               child: GestureDetector(
                onTap: (){
              AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
            },

                 child: Container(
                  height: 50,
                  width: 160,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.lightBlue
                  ),
                  child: const Center(child: Text('Login',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700),)),
                 
                           
                           ),
               ),
             ),
             const SizedBox(height: 20,),
              Center(
                child: RichText(text: TextSpan(
                  text: "Don\'t have an account?",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                  text: "  Create",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>const SignUpPage())
                    )
                  ]
                )),
              ),
              const Image(
                height: 400,
                width: double.maxFinite,
                image: AssetImage('assets/k.jpg'))
          ],
        ),
      ),
    );
  }
}
