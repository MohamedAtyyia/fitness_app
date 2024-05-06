import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/style/style.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key, this.isShwoScafold});
  final bool? isShwoScafold;
  @override
  Widget build(BuildContext context) {
    return  
    isShwoScafold == null  ?
    Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiTe,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Community',
          style: Style.getStyle(
            color: AppColor.black,
            context: context,
            fontWeight: FontWeight.w700,
            fontsize: 16,
          ),
        ),
      ),
      body: 
      ListView.builder(
        itemCount: 12,
        itemBuilder: (context,inbdex)=>      ItemListView())
    ) :   ListView.builder(
        itemCount: 12,
        itemBuilder: (context,inbdex)=>      ItemListView());
  }
}


class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xffEBF8FF),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Importance of sports in human life',
          style: Style.getStyle(color: AppColor.black,
           context: context,
            fontWeight: FontWeight.w700, fontsize: 16,),
          ), Text('15 min ago',
          style: Style.getStyle(color: AppColor.grey.withOpacity(.8),
           context: context,
            fontWeight: FontWeight.w500, fontsize: 12,),
          ),Text('Sports offer numerous benefits for human health and well-being, both physically and mentally.',
          maxLines: 4,
          style: Style.getStyle( color: AppColor.grey.withOpacity(.8),
           context: context,
            fontWeight: FontWeight.w400, fontsize: 16,),
          ),
          Center(child: Image.asset(AppImageAssets.test,height: 120,width: 290,))
        ],
      ),
    );
  }
}