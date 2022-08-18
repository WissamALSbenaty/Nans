import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {

  final String title;
  final String? hint,initialValue;
  final bool isObscureText,isEnabled;
  final Widget? suffixIcon,prefixIcon;
  final TextInputType? textInputType;
  final TextFieldPriority fieldPriority;
  final void Function(String)? onChangedFunction;
  final TextInputFormatter? inputFormatter;



  const CustomTextField({Key? key, required this.title, this.isObscureText=false, this.suffixIcon,this.hint,this.isEnabled=true,
    this.prefixIcon, required this.onChangedFunction,this.textInputType,this.initialValue='',this.inputFormatter,
    this.fieldPriority=TextFieldPriority.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.h(48),
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(16)),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.blackColor.shade200)
      ),
      child: TextFormField(
        enabled: isEnabled,
        initialValue: initialValue,
        obscureText: isObscureText,
        onChanged: onChangedFunction,
        keyboardType: textInputType,
        cursorColor: AppColors.blackColor.shade600,
        inputFormatters: [
          if(inputFormatter!=null)
            inputFormatter!,
        ],
        decoration:   InputDecoration(

          hintText: hint?.tr(),
          hintStyle: AppStyle.textTheme.subtitle1,
          suffixIcon: suffixIcon,

          prefixIcon: prefixIcon,
          isDense: true,
          isCollapsed: false,
          contentPadding: EdgeInsets.zero,
          border:InputBorder.none,

          focusedBorder:InputBorder.none,

          prefixIconConstraints: BoxConstraints(

            minWidth: SizeConfig.h(24),
            maxWidth: SizeConfig.h(24),
          ),
          suffixIconConstraints: BoxConstraints(

            minWidth: SizeConfig.h(24),
            maxWidth: SizeConfig.h(24),
          ),
          label: RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                text: title.tr(),
                style: AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.blackColor.shade600),
                children: [
                  TextSpan(
                    text:fieldPriority!=TextFieldPriority.none? ' (${fieldPriority.name.tr()})':'',
                    style: AppStyle.textTheme.subtitle1!.copyWith(color: AppColors.red60),

                  )
                ]
            ),
          ),


        ),
      ),
    );
  }
}