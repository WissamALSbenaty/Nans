
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/localization_manager.dart';

class StarsRow extends StatelessWidget {
  final double rate,starSize;
  const StarsRow({Key? key, required this.rate,  this.starSize=16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 1; i <= 5; i++)
          ... [
            SvgPicture.asset(
              rate-i==0.5?
              getIt<LocalizationManager>().isEnglishLanguage?Assets.leftHalfSelectedStar:Assets.rightHalfSelectedStar:

              rate-i>=0 ? Assets.ratedStar : Assets.notRatedStar,
              height: starSize.r,width: starSize.r,),
            const CustomSizedBox(width: 2,),
          ],
      ],
    );
  }
}
