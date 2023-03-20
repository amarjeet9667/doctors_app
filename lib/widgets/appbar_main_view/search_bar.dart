import 'package:flutter/material.dart';

import '../../common_colors/common_colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: white),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(color: black),
              textDirection: TextDirection.ltr,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    color: appBarColor,
                  )),
            ),
          ),
        )
      ],
    );
  }
}
