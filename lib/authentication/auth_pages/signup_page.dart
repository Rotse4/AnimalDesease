


import 'package:cattle_desease/authentication/auth_pages/login_page.dart';
import 'package:cattle_desease/authentication/controllers/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var usernameController= TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
              '    Create Account',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600,color: Colors.green),
            ),
            const Text(
              '         Enter creditials to create account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300,color: Colors.black),
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
                controller: usernameController,
                decoration: InputDecoration(
                    hintText: "Enter Username",
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.green,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(height: 10,),
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
                      color: Colors.green,
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
                      color: Colors.green,
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
                  AuthController.instance.register(usernameController.text.trim(),emailController.text.trim(), passwordController.text.trim());
                },

                 child: Container(
                  height: 50,
                  width: 160,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.green
                  ),
                  child: const Center(child: Text('Sign Up',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700),)),
                 
                           
                           ),
               ),
             ),
             const SizedBox(height: 20,),
              Center(
                child: RichText(text: TextSpan(
                  text: "Have an account?",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                  text: "  Login",
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>const LoginPage())
                    )
                  ]
                )),
              ),
           
          ],
        ),
      ),
    );
  }
}
