import 'package:flutter/material.dart';

import '../common_colors/common_colors.dart';

class CommonButton extends StatelessWidget {
  final Widget child;

  const CommonButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: yellowColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
