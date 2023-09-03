import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/close_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/request/presentation/widgets/rating_selector.dart';

class SubmitRatingDialog extends StatefulWidget {

  final void Function({required int givenStars,required String comment}) onSubmitDialog;
  const SubmitRatingDialog({Key? key,  required this.onSubmitDialog,}) : super(key: key);

  @override
  State<SubmitRatingDialog> createState() => _SubmitRatingDialogState();
}

class _SubmitRatingDialogState extends State<SubmitRatingDialog> {

  int selectedStars=1;
  String comment="";


  void changeComment(String newString){
    setState((){
      comment=newString;
    });
  }
  void changeSelectedStars(int newStars){
    setState((){

      selectedStars=newStars;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.all( 16.r),
      contentPadding: EdgeInsets.all( 8.r),
      actionsPadding: EdgeInsets.all( 8.r),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Colors.white,

     title: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children:  [
         Text(
           'Rate this service'.translateWord,
            style: AppStyle.textTheme.bodyMedium,
         ),
         const Spacer(),
         const CloseWidget(),
       ],
     ),

     content: Column(
       mainAxisSize: MainAxisSize.min,
       children: [
          RatingSelector(
            currentSelectedStars: selectedStars,
            onSelectStar: changeSelectedStars,
          ),

          const CustomSizedBox(height: 16,),
         CustomTextField(
           focusNode: null,onSubmit: null,
           validator: null,
             title: 'Comment',
             onChangedFunction:changeComment,
         )
       ],
     ),



      actions: [
        MainButton(

            isLoading: false,
            title: 'Submit',
            onPressed: () {
              AutoRouter.of(context).pop();
              widget.onSubmitDialog(givenStars: selectedStars,comment: comment,);
            }
        ),


      ],
    );
  }
}
