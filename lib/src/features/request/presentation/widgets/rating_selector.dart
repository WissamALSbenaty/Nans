import 'package:flutter/material.dart';
import 'package:nans/src/features/request/presentation/widgets/star_rating_widget.dart';

class RatingSelector extends StatelessWidget {

  final void Function(int) onSelectStar;
  final int currentSelectedStars;

  const RatingSelector({Key? key, required this.onSelectStar, required this.currentSelectedStars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for(int i=1;i<=5;i++)
            StarRatingWidget(index: i,
                onTabStar: onSelectStar,
                isSelectedStar: i<=currentSelectedStars
            )
      ],
    );
  }
}
