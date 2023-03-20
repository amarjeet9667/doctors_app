import 'package:doctors_clinic/common_colors/common_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: const DescriptionAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const NearByDoc(),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const NearByDoc();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
