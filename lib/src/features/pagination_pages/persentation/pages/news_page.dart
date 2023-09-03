import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/widgets/custom_animated_pagination_list_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_tile.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/pagination_pages/controllers/news_controllers.dart';

@RoutePage()
class NewsPage extends StatelessWidget  {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          barTitle: "News",
          context: context,
        ),
        body:Column(
          children: [
            Expanded(
              child: CustomAnimatedPaginationListDataLoaderWidget(
                  dataLoader:getIt<NewsController>(),
                  dataToWidgetMapper: (data)=>OnlineCustomTile(onTilePressed: ()=>appRouter.push(NewsDetailsRoute(id: data.id)),
                      imagePath: data.imagePath,
                      title: data.title, titleMedium: data.creationDate.dayFormat)
              ),
            ),
          ],
        ));
  }
}
