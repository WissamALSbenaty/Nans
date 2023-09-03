import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/models/service_model.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_network_image.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/Home/presentation/widgets/main_page_card.dart';
import 'package:nans/src/features/details/controllers/department_details_controller.dart';

@RoutePage()
class DepartmentDetailsPage extends StatefulWidget {
  final String id;
  const DepartmentDetailsPage({Key? key, required this.id}) : super(key: key);

  @override
  State<DepartmentDetailsPage> createState() => _DepartmentDetailsPageState();
}

class _DepartmentDetailsPageState extends State<DepartmentDetailsPage> {

  late DepartmentDetailsController controller ;

  @override
  void initState() {
    controller=getIt<DepartmentDetailsController>(param1: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ObjectDataLoaderWidget(
        dataLoader: controller,
        childBuilder: (data ) =>SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomNetworkImage(imagePath: data.imagePath,height: 250.h,width: 375.w,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(data.title,style: AppStyle.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),),
                    const CustomSizedBox(height: 16,),
                    Html(data:data.description,
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
                    const CustomSizedBox(height: 16,),

                    Text("Services :".translateWord,style:AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
                    const CustomSizedBox(height: 8,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const CustomSizedBox(width: 16,),
                          for(ServiceModel service in controller.departmentServices)
                            ...[
                              MainPageCard(
                                onPressed: ()=>appRouter.push(ServiceDetailsRoute(id: service.id)),
                                title: service.title,
                                imagePath: service.image, subtitle:null,
                              ),
                              const CustomSizedBox(width: 16,),
                            ],

                        ],
                      ),
                    ),
                    const CustomSizedBox(height: 32,),
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
