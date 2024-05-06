
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class Showdate extends StatefulWidget {
  const Showdate({super.key});

  @override
  State<Showdate> createState() => _ShowdateState();
}

class _ShowdateState extends State<Showdate> {
  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      headerProps: const EasyHeaderProps(
        monthPickerType: MonthPickerType.switcher,
        dateFormatter: DateFormatter.fullDateDMY(),
      ),
      dayProps: EasyDayProps(
        dayStructure: DayStructure.dayStrDayNum,
        activeDayStyle: DayStyle(
          decoration: BoxDecoration(
            // color: Color(0xff8AC4E9),
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff8AC4E9),
                Color(0xff8AC4E9).withOpacity(.4),
                // Color(0xff3371FF),
                // Color(0xff8426D6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
