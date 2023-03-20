import 'dart:developer';

import 'package:doctors_clinic/common_colors/common_colors.dart';
import 'package:doctors_clinic/home_view/home_view.dart';
import 'package:doctors_clinic/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Center(
          child: Text(
            "Welcome Sir",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Enter your phone number",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: query.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Row(
                children: [
                  const Center(
                      child: Text("+91 ", style: TextStyle(color: black))),
                  Container(
                    height: 30,
                    width: 2,
                    color: black,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        style: const TextStyle(color: black),
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black,
                        controller: phoneController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                // log(_phoneController.text);
                await FirebaseAuth.instance.verifyPhoneNumber(
                  phoneNumber: '+91${phoneController.text}',
                  verificationCompleted: (phoneAuthCredential) {},
                  verificationFailed: (FirebaseAuthException e) {},
                  codeSent: (verificationId, int? resendToken) {
                    log(verificationId.toString());
                    HomeView.verify = verificationId;
                    Navigator.of(context).pushNamed(RouteManager.Otp_view);
                  },
                  codeAutoRetrievalTimeout: (verificationId) {},
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(appBarColor),
                fixedSize: MaterialStateProperty.all(const Size(100, 40)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
              ),
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
