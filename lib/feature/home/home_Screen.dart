import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitalvibe/feature/home/manager/cubit/bottom_nav_bar_cubit.dart';
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
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: Scaffold(
        drawer: CustomDrawer(),
        body: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
          builder: (context, state) {
            return BlocProvider.of<BottomNavBarCubit>(context)
                .allScreen[BlocProvider.of<BottomNavBarCubit>(context).index];
          },
        ),
        bottomNavigationBar: CustomBottomAppBar(),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: CustomScrollView(
        slivers: [
          SliverAppBarToHome(),
          CustomBanner(),
          ShowCurrentKG(),
          ShowDataForNutrition(),
          Showdata()
        ],
      ),
    );
  }
}
