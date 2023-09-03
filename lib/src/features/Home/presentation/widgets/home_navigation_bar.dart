import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeNavigationBar extends StatelessWidget {
  final void Function(int) onTabItem;
  final int currentIndex;


  HomeNavigationBar({super.key, required this.onTabItem, required this.currentIndex});

  final List<String> titles = ['My Requests','Home','My Profile'];
  final List<IconData> icons=[Icons.request_page_outlined,Icons.home,Icons.account_circle_outlined];

  @override
  Widget build(BuildContext context) {
    return Observer(
    builder: (_) =>SizedBox(
      key: ValueKey( getIt<LocalizationManager>().isEnglishLanguage),
      height: 84.h,
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabItem,
        backgroundColor: Colors.white,
        selectedItemColor: AppStyle.primary,
        unselectedLabelStyle: AppStyle.textTheme.titleLarge!.copyWith( color: AppStyle.blackColor.shade500,),
        selectedLabelStyle: AppStyle.textTheme.titleLarge!.copyWith( color: AppStyle.primary,),
        type: BottomNavigationBarType.fixed,

        items: [
          for (int i = 0; i < titles.length; i++)
            buildNavigationBarItem(i, i == currentIndex,context),
        ],
      ),
    ));
  }

  BottomNavigationBarItem buildNavigationBarItem(
      int  titleIndex, bool isSelected,BuildContext context) {
    return BottomNavigationBarItem(

      icon:  Padding(
        padding:  EdgeInsets.all(8.r),
        child: Icon(
          icons[titleIndex],
          size: 24.r,
           color: isSelected ? AppStyle.primary : AppStyle.blackColor.shade200),

      ),

      label:titles[titleIndex].translateWord,


    );
  }
}
