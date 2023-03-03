
import 'dart:async';

import 'package:etloob/src/core/Data/local_database_tables/app_database.dart';
import 'package:etloob/src/core/controllers/search_controller.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/util/debouncer.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchTextField extends StatefulWidget {

  final SearchController searchController;

   const SearchTextField({Key? key, required this.searchController,}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final Debouncer debouncer = Debouncer(milliseconds: 500);
  late StreamSubscription<bool> keyboardSubscription;
  bool isFirstDependency=true;
  @override
  void didChangeDependencies() {
    if(isFirstDependency) {
      isFirstDependency = false;

      final KeyboardVisibilityController keyboardVisibilityController = KeyboardVisibilityController();
      // Subscribe
      keyboardSubscription = keyboardVisibilityController.onChange.listen((bool visible) {
        if(!visible) {
          setState(() {
            FocusManager.instance.primaryFocus?.unfocus();
          });
        }

      });
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
   return  SizedBox(
          height: 48.h,
          child: Autocomplete<String>(
            key: ValueKey(widget.searchController.dataList.length),
             fieldViewBuilder:(ctx,_,focusNode,onEditingComplete){
                   return Container(
                   padding: EdgeInsets.symmetric(horizontal: 8.w),
                   decoration: BoxDecoration(

                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(
                       width: focusNode==FocusManager.instance.primaryFocus? 2:1,
                       color: focusNode==FocusManager.instance.primaryFocus? AppColors.yellow: AppColors.blackColor.shade200)
                   ),
                   child: TextFormField(
                     onTap:()=> setState(() {}),
                     initialValue: widget.searchController.searchString,
                     onChanged:(value) {
                        if(value.isEmpty|| value.length>=3) {
                          debouncer.run(() => widget.searchController.searchStringChanges(value));
                        }
                     },
                     onEditingComplete: onEditingComplete,
                     focusNode: focusNode,
                     onFieldSubmitted:(value)=> FocusScope.of(context).unfocus(),
                     decoration:  InputDecoration(

                     prefixIcon: Center(child: SvgPicture.asset(
                       Assets.searchTextField, width: 16.r,
                       color: focusNode==FocusManager.instance.primaryFocus? AppColors.yellow: null,
                       height: 16.r,)),
                     isDense: true,
                     isCollapsed: false,
                     contentPadding: EdgeInsets.zero,
                     border:InputBorder.none,

                     focusedBorder:InputBorder.none,

                     prefixIconConstraints: BoxConstraints(

                       minWidth: 24.r,
                       maxWidth: 24.r,
                     ),
                     suffixIconConstraints: BoxConstraints(

                       minWidth: 24.r,
                       maxWidth: 24.r,
                     ),
                     label: Text('product , brand or vendor'.translateWord,
                           style: AppStyle.textTheme.subtitle1!.copyWith(color: focusNode==FocusManager.instance.primaryFocus? AppColors.yellow: AppColors.blackColor.shade600),
                       ),
                     ),
                   ));
                 },
            optionsViewBuilder: (ctx,onPressed,options)=>Container(
              padding: EdgeInsets.fromLTRB( 0, 0,72.w, (760-(options.length*42).h ), ),

              width: 50.w,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
            ),
              child: Material(
              elevation: 5,

              color: AppColors.whiteColor,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        const CustomSizedBox(height:16,),
                        GestureDetector(
                    onTap: widget.searchController.clearAllHistory,
                          child: Row(
                            children: [
                              const CustomSizedBox(width: 24,),
                              Icon(Icons.delete,color: Colors.blue,size: 24.h),
                              const CustomSizedBox(width: 8,),
                              Text(
                        'Clear all'.translateWord,
                                style: AppStyle.textTheme.bodyText2!.copyWith(color: Colors.blue,),
                              ),
                            ],
                          ),
                        ),
  const CustomSizedBox(height:16,),
                        ...options.map((e) => GestureDetector(
                          onTap: ()=>onPressed(e),
                          child: SizedBox(
                            height: 42.h,

                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const CustomSizedBox(width: 24,),
                                    Center(child: Icon(Icons.history, color: AppColors.blackColor.shade400,)),
                                    const CustomSizedBox(width: 12,),

                                    SizedBox(
                                        height: 40.h,
                                        child: Center(child: Text(e,style: AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.blackColor.shade500),))),
                                    const Spacer(),
                                    Center(child: GestureDetector(
                                        onTap: ()=>widget.searchController.deleteSingleSearch(e),
                                        child: Icon( Icons.close, color: AppColors.blackColor.shade400,))

                                    ),
                                    const CustomSizedBox(width: 24,),
                                  ],
                                ),
                                Container(
                                  height: 2.h,
                                  color: AppColors.blackColor.shade200,
                                )
                              ],
                            ),
                          ),
                        )).toList()
                      ],
                ),
                  ),
              ),
            ),
                optionsBuilder: (TextEditingValue textEditingValue) {
                 return  widget.searchController.dataList.where((Searche option) =>
                      option.content.startsWith(textEditingValue.text.toLowerCase())
                  ).map((e) => e.content).toList();

              },
                onSelected: (String selection) {
                widget.searchController.searchStringChanges(selection );
                },
              )
    );
  }
  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }
}
