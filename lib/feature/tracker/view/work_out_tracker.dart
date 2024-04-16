import 'package:flutter/material.dart';
import 'package:vitalvibe/feature/tracker/view/widget/show_all_tracker.dart';
import 'package:vitalvibe/feature/tracker/view/widget/slivert_to_box_adapter_to_tracker.dart';

class WorkoutTrackerScreen extends StatelessWidget {
  const WorkoutTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff90CDF4),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdaptertoTracker(),
          SliverToBoxAdapter(
            child: SizedBox(height: 50),
          ),
          ShowAlltracker(),
         
        ],
      ),
 
    ));
  }
}
