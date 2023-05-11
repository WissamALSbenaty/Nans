import 'package:nans/src/core/controllers/custom_data_loader.dart';
import 'package:nans/src/core/presentation/widgets/base_data_loader.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/default_shimmer.dart';
import 'package:flutter/material.dart';

class CustomDataLoaderWidget<T> extends StatelessWidget {
  final CustomDataLoader<T> dataLoader;
  final Widget Function(T) childBuilder;

  const CustomDataLoaderWidget({Key? key, required this.dataLoader, required this.childBuilder,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
      return BaseDataLoader<T>(
          dataLoader: dataLoader,
          childBuilder: childBuilder,
          onFailLoading: dataLoader.loadData,
          loadingShimmer: const DefaultShimmer(),
          dataGetter: ()=>dataLoader.data!);
  }


}
