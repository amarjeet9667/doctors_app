import 'package:flutter/material.dart';

import '../common_colors/common_colors.dart';
import '../date_view/date_view.dart';
import '../description_view/description_view.dart';
import '../home_view/home_View.dart';
import '../setting_view/setting_view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectIndex = 0;

  changeIndex(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  List<IconData> navbar = [
    Icons.home,
    Icons.description,
    Icons.calendar_month,
    Icons.settings,
  ];

  List<Widget> screens = [
    const HomeView(),
    const DescriptionView(),
    const DateView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context).size;

    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: kBottomNavigationBarHeight,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: navbar.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  changeIndex(index);
                },
                child: SizedBox(
                  width: query.width / 4,
                  child: Icon(
                    navbar[index],
                    color: index == selectIndex ? yellowColor : grey,
                  ),
                ),
              );
            },
          ),
        ),
        body: IndexedStack(
          index: selectIndex,
          children: screens,
        ));
  }
}
