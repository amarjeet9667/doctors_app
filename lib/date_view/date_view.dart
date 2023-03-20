import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class DateView extends StatelessWidget {
  const DateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DataViewAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                DocInfo(),
                PromocodeCard(),
                PaymentCard(),
                ConfirmCard(),
              ],
            ),
          ),
        ));
  }
}
