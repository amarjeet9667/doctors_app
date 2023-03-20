import 'package:flutter/material.dart';

import '../../common_colors/common_colors.dart';
import '../../home_view/model/model.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Services",
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
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: infoData.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: appBarColor.withOpacity(0.2),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: appBarColor,
                                backgroundImage:
                                    NetworkImage(infoData[index].image),
                              ),
                            ),
                            Positioned(
                                bottom: 20,
                                child: Text(
                                  infoData[index].name,
                                  style: const TextStyle(
                                      color: black, fontSize: 12),
                                ))
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
