import 'package:flutter/material.dart';

import '../../common_colors/common_colors.dart';

class DocInfo extends StatelessWidget {
  const DocInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop"),
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
                              "    Year 4   ",
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
                              "  95% ",
                              style: TextStyle(color: black),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
