import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {

  final String title;
  final double width;
  final void Function() onPressed;
  final bool isLoading;


  const MainButton({Key? key,this.width=291,  required this.title,required this.isLoading,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        elevation: MaterialStateProperty.all(5),
        backgroundColor:MaterialStateProperty.all(AppColors.yellow),
        shape: MaterialStateProperty.all( RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),))
      ),
        onPressed: !isLoading?  (){
          FocusManager.instance.primaryFocus?.unfocus();
          onPressed();
        }:null,
        child: SizedBox(
            width: width.w,
            height: 66.h,

            child: Center(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: isLoading? const CircularProgressIndicator(color: Colors.white,):
                Text(title.translateWord,
                  style:  AppStyle.textTheme.bodyMedium!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
              ))));
  }
}
