import 'package:doctors_clinic/common_colors/common_colors.dart';
import 'package:doctors_clinic/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:firebase_storage/firebase_storage.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  late File _image;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: grey),
              child: TextField(
                controller: namecontroller,
                style: const TextStyle(color: black),
                cursorColor: black,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "Enter Your Name"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: grey),
              child: TextField(
                style: const TextStyle(color: black),
                cursorColor: black,
                controller: phonecontroller,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Your phone Number"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                final picker = ImagePicker();
                final pickedFile =
                    await picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  _image = File(pickedFile!.path);
                });
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(yellowColor),
                  fixedSize: MaterialStateProperty.all(const Size(200, 40)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text('Select Image'),
            ),
            ElevatedButton(
              onPressed: () async {
                final url = await _uploadImage();
                Navigator.of(context).pushNamed(RouteManager.Bottom_nav);
                print('Image URL: $url');
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(yellowColor),
                  fixedSize: MaterialStateProperty.all(const Size(200, 40)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> _uploadImage() async {
    final storageReference = FirebaseStorage.instance
        .ref()
        .child('images/${_image.path.split('/').last}');
    final uploadTask = storageReference.putFile(_image);
    final downloadUrl = (await uploadTask);
    final String url = (await downloadUrl.ref.getDownloadURL());
    return url;
  }
}
