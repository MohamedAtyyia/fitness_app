import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/feature/tracker/view/widget/cart_tracker.dart';
import 'package:vitalvibe/feature/tracker/view/widget/item_tracker.dart';

class ShowAlltracker extends StatelessWidget {
  const ShowAlltracker({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.whiTe,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 50),
                CardTracker(),
                12.hs,
                ListView.builder(
                    itemCount: 13,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, idex) => ItemTracker())
              ],
            ), // يمكنك استبدال YourWidget() بالمحتوى الذي تريد عرضه
          ),
          // بقية العناصر الأخرى في القائمة
        ],
      ),
    );
  }
}
