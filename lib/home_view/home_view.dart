import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../common_colors/common_colors.dart';
import '../widgets/widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String verify = "";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController textEditingController = TextEditingController();

  final CalendarFormat calendarFormat = CalendarFormat.week;
  final DateTime selectedDay = DateTime.now();
  final DateTime focusedDay = DateTime.now();
  late DateTime startWeek;

  @override
  void initState() {
    super.initState();
    startWeek = selectedDay.subtract(Duration(days: selectedDay.weekday - 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 250,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarInfo(),
            Text(
              "Gregory House",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),
            SearchBar(textEditingController: textEditingController),
            const SizedBox(height: 10),
            TableCalendar(
              daysOfWeekHeight: 20,
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  color: white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              calendarFormat: calendarFormat,
              selectedDayPredicate: (day) => isSameDay(selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  selectedDay = selectedDay;
                  focusedDay = focusedDay;
                  startWeek = selectedDay
                      .subtract(Duration(days: selectedDay.weekday - 1));
                });
              },
              focusedDay: focusedDay,
              firstDay: DateTime.utc(2023, 1, 1),
              lastDay: DateTime.utc(2023, 12, 31),
              headerVisible: false,
              headerStyle: const HeaderStyle(formatButtonVisible: false),
              calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                todayDecoration: const BoxDecoration(),
                selectedDecoration: BoxDecoration(
                  color: appBarColor.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
              ),
              calendarBuilders: CalendarBuilders(
                defaultBuilder: (context, day, focusedDay) {
                  // if (day.isBefore(startWeek) ||
                  //     day.isAfter(startWeek.add(const Duration(days: 6)))) {
                  //   return Container();
                  // }

                  final isToday = isSameDay(day, DateTime.now());
                  final icon = isToday ? const Icon(Icons.notifications) : null;
                  return Container(
                    height: 34,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: grey.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: [
                        Text(
                          day.day.toString(),
                        ),
                        if (icon != null) Positioned(bottom: 0, child: icon),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: const [
          InformationCard(),
          VaccinesInfo(),
        ],
      ),
    );
  }
}
