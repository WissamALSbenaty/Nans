
import 'package:flutter/material.dart';
import 'package:nans/src/core/controllers/list_data_loader.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_animated_list.dart';
import 'package:nans/src/core/presentation/widgets/custom_data_loader_widget.dart';

import 'shimmers/custom_list_loading_shimmer.dart';

class CustomListDataLoaderWidget<T> extends StatelessWidget {
  final ListDataLoader<T> dataLoader;
  final Widget Function(T) dataToWidgetMapper;


  const CustomListDataLoaderWidget({Key? key, required this.dataLoader, required this.dataToWidgetMapper,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        color: AppStyle.primary,
        onRefresh: dataLoader.loadData,
        child :ObjectDataLoaderWidget(
            key: ValueKey(dataLoader.data?.length),
            dataLoader: dataLoader,
            loadingShimmer:const CustomListLoadingShimmer() ,
            childBuilder: (data)=>Column(
                children: [

                  Expanded(
                    child: CustomAnimatedList(
                      children: [
                        ...dataLoader.data!.map(dataToWidgetMapper).toList()
                      ],
                    ),
                  ),
                ])));
  }
}
