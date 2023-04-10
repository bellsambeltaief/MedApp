import 'package:doc_app/tools/colors_palette.dart';
import 'package:doc_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key, }) : super(key: key);
  @override
  _CalenderState createState() =>  _CalenderState();
}

class _CalenderState extends State<Calender> {
  final DateTime _currentDate = DateTime(2019, 2, 3);
  DateTime _currentDate2 = DateTime(2019, 2, 3);
  final DateTime _targetDateTime = DateTime(2019, 2, 3);

  @override
  Widget build(BuildContext context) {
    final calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: ColorsPalette.primaryColor,
      onDayPressed: (date, events) {
        setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: const TextStyle(
        color: ColorsPalette.primaryColor,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
      height: 420.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
          const CircleBorder(side: BorderSide(color: Colors.black)),
      markedDateCustomTextStyle: const TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: false,
      todayTextStyle: const TextStyle(
        color: ColorsPalette.primaryColor,
      ),
   
      todayButtonColor: Colors.grey,
      selectedDayTextStyle: const TextStyle(
        color: Colors.black,
      ),
      minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
      maxSelectedDate: _currentDate.add(const Duration(days: 360)),
      prevDaysTextStyle: const TextStyle(
        fontSize: 16,
        color: ColorsPalette.primaryColor,
      ),
      inactiveDaysTextStyle: const TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
    );

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
              const  AppBarTop(textTop: "Calender"),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
                  child: calendarCarouselNoHeader,
                ),
              ],
            ),
          ),
          ),
    );
  }
}
