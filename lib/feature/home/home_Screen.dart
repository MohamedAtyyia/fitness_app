import 'package:flutter/material.dart';
import 'package:vitalvibe/feature/home/widget/abb_bar_bottom.dart';
import 'package:vitalvibe/feature/home/widget/custom_banner.dart';
import 'package:vitalvibe/feature/home/widget/custom_drawer.dart';
import 'package:vitalvibe/feature/home/widget/show_Data_for_nutrition.dart';
import 'package:vitalvibe/feature/home/widget/show_data.dart';
import 'package:vitalvibe/feature/home/widget/show_vurrent_kg.dart';
import 'package:vitalvibe/feature/home/widget/sliver_app_bar_tohome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.miniCenterDocked,
        // floatingActionButton: FloaringButton(),
        drawer: CustomDrawer(),
        body: CustomScrollView(
          slivers: [
            SliverAppBarToHome(),
            CustomBanner(),
          ShowCurrentKG(),
            ShowDataForNutrition(),
            Showdata()
          ],
        ),
       bottomNavigationBar: CustomBottomAppBar(),
      ),
    );
  }
}

