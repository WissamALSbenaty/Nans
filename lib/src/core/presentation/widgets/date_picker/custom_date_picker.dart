import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/date_picker/show_date_picker.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDatePicker extends StatefulWidget {

  final String title;
  final DateTime startDate,endDate;
  final void Function(DateTime?)  onDateTimeSelection;


  const CustomDatePicker({Key? key, required this.title,required this.onDateTimeSelection,  required this.startDate, required this.endDate}) : super(key: key);

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {

   DateTime? currentDate;

  void changeDate(DateTime? newDateTime){
    setState(() {
      currentDate=newDateTime;
    });
      widget.onDateTimeSelection(currentDate);
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  ()=>showCustomDatePicker(initialDate: currentDate??DateTime.now(),
          onDateSelection: changeDate,
          context: context,endDate: widget.endDate,startDate: widget.startDate),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10),
          border:Border.all(color: AppStyle.blackColor.shade200)
        ),
        height: 48.h,
        width : 360.w,
        child: Row(

          children: [

            const CustomSizedBox(width: 16,),
              Text(currentDate?.dayFormat ?? widget.title.translateWord,style:AppStyle.textTheme.bodyMedium!.copyWith(color: AppStyle.blackColor.shade800) ,),

              const Spacer(),
              SvgPicture.asset(
                Assets.downArrow,
                height: 24.r,
                width : 24.r,
              ),
            const CustomSizedBox(width: 16,),
          ],
        ),
      ),
    );
  }
}
