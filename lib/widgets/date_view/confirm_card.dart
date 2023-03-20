import 'package:flutter/material.dart';

import '../../common_colors/common_colors.dart';

class ConfirmCard extends StatelessWidget {
  const ConfirmCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: Card(
        child: Center(
          child: Container(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22), color: yellowColor),
            child: const Center(
              child: Text("Pay & Confirm"),
            ),
          ),
        ),
      ),
    );
  }
}
