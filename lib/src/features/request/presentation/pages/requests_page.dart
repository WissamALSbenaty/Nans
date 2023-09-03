import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/models/request_model.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_animated_pagination_list_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_empty_view.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/request/controllers/requests_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/features/request/presentation/widgets/request_tile.dart';



class RequestsPage extends StatelessWidget with WidgetControllerCreatorMixin<AppController>  {
   RequestsPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Observer(builder: (_) {
      return createdController.userProfileModel==null? CustomEmptyView(NotAuthorizedError(message: null)):
        Scaffold(
          backgroundColor: AppStyle.blue,

          appBar: AppBar(
            titleSpacing: 24.w,
            elevation: 0,
            backgroundColor: Colors.white,

            title: Text('My Requests'.translateWord,style: AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
          ),


          body:    CustomAnimatedPaginationListDataLoaderWidget<RequestModel>(
            dataLoader:getIt<RequestsController>(),
            dataToWidgetMapper: (data)=>RequestTile(request: data),
        )
        );
    });
      }
}