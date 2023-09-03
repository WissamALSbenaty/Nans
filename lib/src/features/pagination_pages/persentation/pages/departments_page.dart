import 'package:auto_route/auto_route.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/widgets/custom_animated_pagination_list_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_tile.dart';
import 'package:nans/src/features/pagination_pages/controllers/departments_controllers.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DepartmentsPage extends StatelessWidget  {
   const DepartmentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: "Departments",
        context: context,
      ),
      body:Column(
        children: [
          Expanded(
            child: CustomAnimatedPaginationListDataLoaderWidget(
              dataLoader:getIt<DepartmentsController>(),
              dataToWidgetMapper: (data)=>OnlineCustomTile(onTilePressed: ()=>appRouter.push(DepartmentDetailsRoute(id: data.id)),
    imagePath: data.imagePath,
    title: data.title, titleMedium: '')
    ),
          ),
        ],
      ));
  }
}
