import 'package:flutter/material.dart';

import '../../common_button/common_button.dart';
import '../../common_colors/common_colors.dart';

class NearByDoc extends StatelessWidget {
  const NearByDoc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("DOCTORS Nearby",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: appBarColor)),
                  Text("See all",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: yellowColor)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.deepPurple,
                    backgroundImage: NetworkImage(
                        'https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Gregory House",
                            style: TextStyle(color: black)),
                        const SizedBox(height: 10),
                        const Text("Nephrologist",
                            style: TextStyle(color: grey)),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: appBarColor.withOpacity(0.2),
                              child: const Icon(
                                Icons.work,
                                color: appBarColor,
                                size: 15,
                              ),
                            ),
                            const Text(
                              "    Year 3   ",
                              style: TextStyle(color: black),
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.red.withOpacity(0.2),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 15,
                              ),
                            ),
                            const Text(
                              "  67% ",
                              style: TextStyle(color: black),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Total Fee", style: TextStyle(color: grey)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("\$80", style: TextStyle(color: black)),
                        CommonButton(
                            child: Center(child: Text("Make an Appointment"))),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
