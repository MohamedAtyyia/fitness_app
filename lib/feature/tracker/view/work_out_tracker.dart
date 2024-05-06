import 'package:flutter/material.dart';
import 'package:vitalvibe/feature/tracker/view/widget/show_all_tracker.dart';
import 'package:vitalvibe/feature/tracker/view/widget/slivert_to_box_adapter_to_tracker.dart';

class WorkoutTrackerScreen extends StatelessWidget {
  const WorkoutTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color(0xff90CDF4),
          body: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomScrollView(
                slivers: [
                  SliverToBoxAdaptertoTracker(),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 50),
                  ),
                  ShowAlltracker(),
                 
                ],
            ),
          ),
     
        );
  }
}
