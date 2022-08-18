import 'package:etloob/src/core/presentation/sheets/sheet_header.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

Future showCustomBottomSheet(BuildContext context,Widget sheetWidget ,List<double> snappingHeights,{bool isDismissable=true}) {

  // snapping Heights is percent value of the screen that the sheet stops on

  return showSlidingBottomSheet( context,
       builder:(ctx)=>SlidingSheetDialog(

         duration: const Duration(milliseconds: 300),
         cornerRadius: 16,
         padding: EdgeInsets.only(top: SizeConfig.h(8)),
         isDismissable: isDismissable,
         backdropColor:AppColors.blackColor.withOpacity(0.6),
         avoidStatusBar: true,
         isBackdropInteractable: true,
         //extendBody: true,
         color: AppColors.blackColor.shade100,

          
         snapSpec: SnapSpec(
           snappings: snappingHeights,
         ),
         headerBuilder:(ctx2,start){
           return const SheetHeader();
       },
       builder: (_,__)=>Material(
           color:AppColors.whiteColor ,
           child: sheetWidget,
       ),


   ));
}