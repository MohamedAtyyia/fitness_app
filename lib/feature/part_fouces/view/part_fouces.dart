import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/cusotm_sliver_appbar.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/part_fouces/view/widget/item_part_fouces.dart';

class PartFoucesScreen extends StatelessWidget {
  const PartFoucesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              title: 'Part focus',
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextInfo(
                    title: 'What Do You Want to\n Train?',
                    textStyle: Style.getStyle(
                        color: AppColor.black,
                        context: context,
                        fontWeight: FontWeight.w600,
                        fontsize: 16)),
              ),
            ),
            SliverList.builder(
                itemCount: 14, itemBuilder: (contetx, index) => ItemPartFouces())
          ],
        ),
      ),
    );
  }
}
