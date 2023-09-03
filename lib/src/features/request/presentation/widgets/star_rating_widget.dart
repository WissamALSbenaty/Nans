import 'package:nans/src/core/presentation/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StarRatingWidget extends StatelessWidget {

  final int index;
  final bool isSelectedStar;
  final void Function(int) onTabStar;

  const StarRatingWidget({Key? key, required this.index, required this.onTabStar, required this.isSelectedStar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTabStar(index),
        child: SvgPicture.asset(
        isSelectedStar? Assets.selectedStar:Assets.notSelectedStar,
          height: 48.r,width: 48.r,)
    );
  }
}
