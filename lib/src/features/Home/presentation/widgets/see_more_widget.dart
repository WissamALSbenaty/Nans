import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/util/extentions.dart';

class SeeMoreWidget extends StatelessWidget {

  final void Function() onPressed;
  const SeeMoreWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 350.h,
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppStyle.blackColor.shade200,
        ),
        child: Center(
          child: Text(
            'See more'.translateWord,style: AppStyle.textTheme.headlineSmall!.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
