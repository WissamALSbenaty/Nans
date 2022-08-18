import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/Data/Errors/custom_error.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/presentation/widgets/main_button.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomEmptyView extends StatelessWidget {

  final CustomError error;
  final void Function()? onHelperButtonPressed;


  const CustomEmptyView(this.error,{this.onHelperButtonPressed,Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: SizeConfig.w(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(error.imagePath),
          const CustomSizedBox(height: 16,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(16)),
            child: Text(error.errorMessage.tr(),
              textAlign: TextAlign.center,
              style: AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.blackColor.shade600)
            ),
          ),
          const CustomSizedBox(height: 16,),

          getHelperButton(context),

          //const Spacer(),
        ],
      ),
    );
  }

  Widget getHelperButton(BuildContext context){
    if(error is InternetConnectionError) {
      return MainButton(title: 'Retry',onPressed: onHelperButtonPressed!,);
    } else if(error is NotAuthorizedError) {
      return MainButton(title: 'Login/Register',
        onPressed: () => AutoRouter.of(context).replace(const LoginPageRoute()),);
    }
    return Container();
  }
}