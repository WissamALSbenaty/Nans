import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_network_image.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';

class MainPageCard extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final String?imagePath,subtitle;

  const MainPageCard({Key? key, required this.onPressed, required this.title, required this.imagePath,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 350.h,
        width: 300.w,
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomNetworkImage(
                imagePath: imagePath,
                height: 200.h,boxFit: null,
              radius: BorderRadius.circular(16.r),
            ),
            const CustomSizedBox(height: 8,),
            Expanded(child: Text(title,style: AppStyle.textTheme.headlineSmall!,maxLines: 2,overflow: TextOverflow.ellipsis,)),
            if(subtitle!=null)
              ...[
            Expanded(child: Text(subtitle!,style: AppStyle.textTheme.bodySmall!.copyWith(color: AppStyle.blackColor.shade400),maxLines: 2,overflow: TextOverflow.ellipsis)),
              ]
          ],
        ),
      ),
    );
  }
}
