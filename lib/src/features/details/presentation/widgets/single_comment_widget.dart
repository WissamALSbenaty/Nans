import 'package:flutter/material.dart';
import 'package:nans/src/Data/models/comment_model.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';

import 'stars_row.dart';

class SingleCommentWidget extends StatelessWidget {
  final CommentModel comment;
  const SingleCommentWidget({Key? key, required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            Text(
              comment.user.name ,style: AppStyle.textTheme.bodyMedium!.copyWith(color: AppStyle.blackColor.shade600,fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            StarsRow(rate: comment.vote.toDouble()/2),
          ],
        ),

        const CustomSizedBox(height: 4,),
        Text(comment.comment,style: AppStyle.textTheme.bodyMedium!.copyWith(color: AppStyle.blackColor.shade500),),

        const CustomSizedBox(height: 16,)
      ],
    );
  }
}
