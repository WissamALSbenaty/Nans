// ignore_for_file: deprecated_member_use
import 'package:auto_route/auto_route.dart';
import 'package:nans/src/Data/models/social_media_model.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/widgets/base_data_loader.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/Profile/controllers/social_media_controller.dart';
import 'package:nans/src/features/Profile/presentation/sheets_and_popups/logout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/features/Profile/presentation/widgets/route_option_card.dart';

import 'package:url_launcher/url_launcher.dart';
class SettingsOptionItem{
  final String title;
  final String iconPath;
  final void Function() onPressed;

  SettingsOptionItem({required this.title, required this.iconPath, required this.onPressed});
}
@RoutePage()
class SettingsPage extends StatelessWidget with WidgetControllerCreatorMixin<SocialMediaController> {
  SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(context: context, barTitle: 'Settings', barActions: [
          GestureDetector(
            onTap: () => showDialog(context: context, builder: (ctx) =>  LogoutDialog()),
            child: Center(
              child: Text(
                'Logout'.translateWord,
                style: AppStyle.textTheme.bodyMedium!
                    .copyWith(color: AppStyle.primary, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),

        body: BaseDataLoader<SocialMediaModel>(
            dataLoader: createdController,
            dataGetter: () => createdController.data!,
            onFailLoading: createdController.loadData,
            childBuilder: (data) {
              final List<SettingsOptionItem> settingsItems=[
                SettingsOptionItem(title: 'Edit My Account', iconPath: Assets.user,
                  onPressed: ()=>AutoRouter.of(context).push(  EditAccountRoute()),
                ),

                if(data.phoneNumber.isNotEmpty)
                  SettingsOptionItem(title: 'Call Support', iconPath: Assets.phoneNumber,
                      onPressed:  ()=> launch("tel:${data.phoneNumber}")
                  ),

                if(data.whatsapp.isNotEmpty)
                  SettingsOptionItem(title: 'Contact us on WhatsApp', iconPath: Assets.whatsapp,
                      onPressed:   () => launch("https://wa.me/${data.whatsapp}")
                  ),

                if(data.facebook.isNotEmpty)
                  SettingsOptionItem(title: 'Contact us on Facebook', iconPath: Assets.facebook,
                    onPressed:   () => launch(data.facebook),
                  ),

                if(data.instagram.isNotEmpty)
                  SettingsOptionItem(title: 'Contact us on Instagram', iconPath: Assets.instagram,
                    onPressed:   () => launch(data.instagram),
                  ),


              ];

              return SingleChildScrollView(
                padding: EdgeInsets.all(16.r,),
                child:  Column(
                  children: [
                    for (SettingsOptionItem item in settingsItems) ...[
                      RouteOptionCard(
                          onPressed:item.onPressed,
                          title:item.title,
                          iconPath:item.iconPath,
                          iconColor: AppStyle.blackColor.shade100),
                      const CustomSizedBox(height: 16,),
                    ],
                    const CustomSizedBox(height: 32,),
                  ],
                ),
              );
            }));
  }
}
