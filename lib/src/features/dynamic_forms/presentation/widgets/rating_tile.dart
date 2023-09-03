import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/models/comment_model.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/custom_tile.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingTile extends StatelessWidget {
  final CommentModel ratingDetailsModel;
  const RatingTile({Key? key, required this.ratingDetailsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnlineCustomTile(
        onTilePressed: (){},
        imagePath:'',
        title: ratingDetailsModel.user.name,
        titleMedium: ratingDetailsModel.comment,
      trailing:  Row(
        children: [
          for (int i = 1; i <= 5; i++)
            ... [
              SvgPicture.asset(
                ratingDetailsModel.vote-i==0.5?
                getIt<LocalizationManager>().isEnglishLanguage?Assets.leftHalfSelectedStar:Assets.rightHalfSelectedStar:

                ratingDetailsModel.vote-i>=0 ? Assets.ratedStar : Assets.notRatedStar,
                height: 16.r,width: 16.r,),
              const CustomSizedBox(width: 8,),
            ],
        ],
    )
    );
  }
}
