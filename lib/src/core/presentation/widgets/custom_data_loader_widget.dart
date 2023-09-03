import 'package:nans/src/core/controllers/object_data_loader.dart';
import 'package:nans/src/core/presentation/widgets/base_data_loader.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/default_shimmer.dart';
import 'package:flutter/material.dart';

class ObjectDataLoaderWidget<T> extends StatelessWidget {
  final ObjectDataLoader<T> dataLoader;
  final Widget Function(T) childBuilder;
  final Widget? loadingShimmer;

  const ObjectDataLoaderWidget({Key? key, required this.dataLoader, required this.childBuilder, this.loadingShimmer,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return BaseDataLoader<T>(
        dataLoader: dataLoader,
        childBuilder: childBuilder,
        onFailLoading: dataLoader.loadData,
        loadingShimmer:loadingShimmer?? const DefaultShimmer(),
        dataGetter: ()=>dataLoader.data!);
  }


}
