import 'package:flutter/material.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/feature/home/widget/num_hour_sleep.dart';
import 'package:vitalvibe/feature/home/widget/show_amount_water.dart';

class Showdata extends StatelessWidget {
  const Showdata({super.key});

  @override
  Widget build(BuildContext context) {
    return     SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                color: Color(0xffF9F9F9),
                child: Row(
                  children: [
                    Expanded(child: ShowAmountWater()),
                    20.ws,
                    Expanded(child: NumHoureSleep()),
                  ],
                ),
              ),
            );
  }
}