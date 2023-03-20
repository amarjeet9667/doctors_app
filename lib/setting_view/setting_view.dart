import 'package:doctors_clinic/common_colors/common_colors.dart';
import 'package:doctors_clinic/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Center(
            child: Text("Settings",
                style: TextStyle(fontWeight: FontWeight.bold))),
      ),
      body: Center(
        child: InkWell(
          onTap: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushReplacementNamed(RouteManager.Option);
          },
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: yellowColor,
            ),
            child: const Center(
              child: Text("LogOut"),
            ),
          ),
        ),
      ),
    );
  }
}
