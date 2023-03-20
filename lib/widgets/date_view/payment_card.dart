import 'package:flutter/material.dart';

import '../../common_colors/common_colors.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({
    super.key,
  });

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  bool select = true;
  bool unselect = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("PAYMENT OPTIONS",
                  style: TextStyle(color: black, fontWeight: FontWeight.bold)),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: black)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  select = !true;
                                });
                              },
                              child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: select ? grey : appBarColor,
                                  child: const CircleAvatar(
                                      radius: 3, backgroundColor: white))),
                          const SizedBox(width: 40),
                          const Text(
                            "Pay Pal",
                            style: TextStyle(
                                color: black, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: black,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  unselect = !true;
                                });
                              },
                              child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor:
                                      unselect ? grey : appBarColor,
                                  child: const CircleAvatar(
                                      radius: 3, backgroundColor: white))),
                          const SizedBox(width: 40),
                          const Text(
                            "Credit Card",
                            style: TextStyle(
                                color: black, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
