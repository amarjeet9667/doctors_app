import 'package:doctors_clinic/common_colors/common_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VaccinesInfo extends StatelessWidget {
  const VaccinesInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 300,
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Daily Reports",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: appBarColor),
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Symptoms of Covid to watch out \nfor",
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                style: TextStyle(
                                    color: black, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                DateFormat("MMMM dd, hh:00a")
                                    .format(DateTime.now()),
                                style: const TextStyle(color: grey),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue,
                            ),
                            child: const ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Image(
                                image: NetworkImage(
                                    "https://img.freepik.com/free-vector/organic-flat-vaccination-campaign-illustration_52683-62675.jpg?w=740&t=st=1678612331~exp=1678612931~hmac=0fc0f3df553fd5c5769afd5d431897b6744962ff984ddf5a8fbc16c525dc1f42"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Symptoms of Covid to watch out \nfor",
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                style: TextStyle(
                                    color: black, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                DateFormat("April dd,hh:00a")
                                    .format(DateTime.now()),
                                style: const TextStyle(
                                  color: grey,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue,
                            ),
                            child: const ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Image(
                                image: NetworkImage(
                                    "https://img.freepik.com/free-vector/organic-flat-vaccination-campaign-illustration_52683-62675.jpg?w=740&t=st=1678612331~exp=1678612931~hmac=0fc0f3df553fd5c5769afd5d431897b6744962ff984ddf5a8fbc16c525dc1f42"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
