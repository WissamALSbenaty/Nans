

import 'package:auto_route/auto_route.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/presentation/widgets/base_data_loader.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/Home/presentation/pages/home_page_navigation.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/features/auth/presentation/pages/login_page.dart';

@RoutePage()
class AuthPage extends StatelessWidget with WidgetControllerCreatorMixin<AppController>{
   AuthPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseDataLoader(
          dataLoader: createdController,
          onFailLoading: createdController.loadData,
          dataGetter: ()=>createdController.currentUser,
          childBuilder: (data)=>
          data==null ||createdController.userProfileModel?.accountConfirmation==false?
                   const LoginPage():const HomePageNavigation()),
    );
  }
}
