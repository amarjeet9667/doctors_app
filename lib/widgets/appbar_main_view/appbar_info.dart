import 'package:flutter/material.dart';

import '../../common_colors/common_colors.dart';

class AppBarInfo extends StatelessWidget {
  const AppBarInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/goodbye.png',
              color: yellowColor,
              height: 15,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Hello",
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 15),
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
                radius: 20,
                backgroundColor: Colors.deepPurple.shade400,
                backgroundImage: const NetworkImage(
                    "https://thumbs.dreamstime.com/b/smiling-female-doctor-holding-medical-records-lab-coat-her-office-clipboard-looking-camera-56673035.jpg")),
          ],
        )
      ],
    );
  }
}
