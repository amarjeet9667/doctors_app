import 'package:flutter/material.dart';

import '../../common_colors/common_colors.dart';

class PromocodeCard extends StatelessWidget {
  const PromocodeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Total coast",
                      style:
                          TextStyle(color: black, fontWeight: FontWeight.bold)),
                  Text("\$80",
                      style:
                          TextStyle(color: black, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: const [
                  Text("Session fee for 30 minutes",
                      style: TextStyle(color: grey, fontSize: 15)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("To Pay",
                      style:
                          TextStyle(color: black, fontWeight: FontWeight.bold)),
                  Text("\$80",
                      style:
                          TextStyle(color: black, fontWeight: FontWeight.bold)),
                ],
              ),
              const Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: appBarColor.withOpacity(0.2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.percent_rounded, color: appBarColor),
                      Center(
                        child: Text("Use Promo Code",
                            style: TextStyle(color: black)),
                      ),
                      Icon(Icons.arrow_forward_ios, color: black)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
