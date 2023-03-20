import 'package:flutter/material.dart';

import '../../common_colors/common_colors.dart';

class DescriptionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DescriptionAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      automaticallyImplyLeading: false,
      toolbarHeight: 170,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      )),
                  Text(
                    "DOCTORS",
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.info_sharp))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: white,
            ),
            child: const TextField(
              style: TextStyle(color: black),
              cursorColor: black,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: appBarColor,
                  )),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(170);
}
