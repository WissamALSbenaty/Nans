import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style.dart';

class CustomTabBar extends StatelessWidget {

  final List<String> titles;
  final bool isScrollable;
  final TabController? controller;

  const CustomTabBar({Key? key, required this.titles,this.isScrollable=true,  this.controller}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: TabBar(
        controller: controller,
        isScrollable: isScrollable,

        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: AppColors.yellow,
        unselectedLabelColor: AppColors.blackColor.shade500,
        labelColor: AppColors.yellow,
        unselectedLabelStyle: AppStyle.textTheme.subtitle1,
        labelStyle: AppStyle.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
        indicatorPadding: EdgeInsets.symmetric(horizontal:4.w ),

        tabs: [

          for(int i=0;i<titles.length;i++)
            Tab(
              text: titles[i].translateWord,
              height: 25.h,
            )
        ],
      ),
    );
  }

}