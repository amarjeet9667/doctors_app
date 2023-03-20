import 'package:doctors_clinic/common_colors/common_colors.dart';
import 'package:doctors_clinic/home_view/home_view.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  TextEditingController otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context).size;
    FirebaseAuth auth = FirebaseAuth.instance;

    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Enter OTP ",
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.withOpacity(0.2),
              ),
              width: query.width * 0.8,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: const TextStyle(color: black),
                cursorColor: Colors.black,
                controller: otp,
                decoration: const InputDecoration(border: InputBorder.none),
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
                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: HomeView.verify, smsCode: otp.text);
                await auth.signInWithCredential(credential);
                // final prefs = await SharedPreferences.getInstance();
                // await prefs.setBool('loggedIn', true);
                Navigator.of(context).pushReplacementNamed('/nav');
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
