import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/part_fouces/view/widget/app_bar_to_bart_fouces.dart';
import 'package:vitalvibe/feature/part_fouces/view/widget/item_slivet_list.dart';

class DetailsPartFouces extends StatelessWidget {
  const DetailsPartFouces({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // backgroundColor: Color(0xff90CDF4),
          body: CustomScrollView(
        slivers: [AppBarToPartFouces(), BuildSliverList()],
      )),
    );
  }
}

class BuildSliverList extends StatelessWidget {
  const BuildSliverList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          20.hs,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextInfo(
                    title: 'Exercises',
                    textStyle: Style.getStyle(
                        color: AppColor.black,
                        context: context,
                        fontWeight: FontWeight.w600,
                        fontsize: 16)),
                TextInfo(
                    title: '3 Sets',
                    textStyle: Style.getStyle(
                        color: AppColor.grey,
                        context: context,
                        fontWeight: FontWeight.w500,
                        fontsize: 12))
              ],
            ),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 13,
              itemBuilder: (context, inbdex) => ItemSlieverList())
        ],
      ),
    );
  }
}
