

import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/util/deep_linker_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page_navigation.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isFirstDependency=true;

  @override
  void didChangeDependencies() {
    if(isFirstDependency){
      isFirstDependency=false;
      getIt<DeepLinkerManager>().init(context);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: const [
        ],
        child: Scaffold(
          body: HomePageNavigation()),

    );
  }
  @override
  void dispose() {
    getIt<DeepLinkerManager>().dispose();
    super.dispose();
  }
}
