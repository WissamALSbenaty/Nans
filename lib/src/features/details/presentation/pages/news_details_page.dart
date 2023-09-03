import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_network_image.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/details/controllers/news_details_controller.dart';

@RoutePage()
class NewsDetailsPage extends StatelessWidget {
  final String id;
  const NewsDetailsPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ObjectDataLoaderWidget(
        dataLoader: getIt<NewsDetailsController>(param1: id),
        childBuilder: (data ) =>Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomNetworkImage(imagePath: data.imagePath,height: 250.h,width: 375.w,),
const CustomSizedBox(height: 16,),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
              Text(data.title,style: AppStyle.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),),
                    const CustomSizedBox(height: 16,),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Html(data:data.description,
                          style: {
                            "body": Style(fontSize: FontSize.large,
                                margin: Margins.zero, padding: HtmlPaddings.zero),
                            "div":Style(
                              padding: HtmlPaddings.zero,

                              margin: Margins.zero,
                              fontSize: FontSize.medium,
                              color: AppStyle.blackColor.shade400,

                            )
                          },
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
