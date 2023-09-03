
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/Data/models/department_model.dart';
import 'package:nans/src/Data/models/licenced_company_model.dart';
import 'package:nans/src/Data/models/news_model.dart';
import 'package:nans/src/Data/models/service_model.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/widgets/base_data_loader.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/Home/controllers/main_page_controller.dart';
import 'package:nans/src/features/Home/presentation/widgets/main_page_card.dart';
import 'package:nans/src/features/Home/presentation/widgets/see_more_widget.dart';

class MainPage extends StatelessWidget with WidgetControllerCreatorMixin<MainPageController>  {
   MainPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.blue,

      body: BaseDataLoader(
        dataLoader: createdController,
        onFailLoading: createdController.loadData,
        dataGetter: ()=>createdController.services,

        childBuilder:(data)=> SingleChildScrollView(
          padding: EdgeInsets.all( 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
                const CustomSizedBox(height: 64,),

                Text('Latest news :'.translateWord,style: AppStyle.textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),
              const CustomSizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(NewsModel news in createdController.news)
                    ...[
                      MainPageCard(
                        onPressed: ()=>appRouter.push(NewsDetailsRoute(id: news.id)),
                        title: news.title,
                        imagePath: news.imagePath,
                        subtitle: news.creationDate.dayFormat,
                    ),
                      const CustomSizedBox(width: 16,),
                    ],
                    SeeMoreWidget(onPressed: ()=>appRouter.push(const NewsRoute())),
                    const CustomSizedBox(width:16 ,),
                  ],
                ),
              ),
                const CustomSizedBox(height: 16,),

                Text('Our Services :'.translateWord,style: AppStyle.textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),
              const CustomSizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(ServiceModel service in createdController.services)
                    ...[
                      MainPageCard(
                        onPressed: ()=>appRouter.push(ServiceDetailsRoute(id: service.id)),
                        title: service.title,
                        imagePath: service.image, subtitle:null,
                    ),
                      const CustomSizedBox(width: 16,),
                    ],

                    SeeMoreWidget(onPressed: ()=>appRouter.push(const  ServicesRoute())),
                    const CustomSizedBox(width:16 ,),
                  ],
                ),
              ),
                const CustomSizedBox(height: 16,),

                Text('Our departments :'.translateWord,style: AppStyle.textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),
              const CustomSizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(DepartmentModel department in createdController.departments)
                    ...[
                      MainPageCard(
                        onPressed: ()=>appRouter.push(DepartmentDetailsRoute(id: department.id)),
                        title: department.title,
                        imagePath: department.imagePath,
                        subtitle: null,
                    ),
                      const CustomSizedBox(width: 16,),
                    ],

                    SeeMoreWidget(onPressed: ()=>appRouter.push(const DepartmentsRoute())),
                    const CustomSizedBox(width:16 ,),
                  ],
                ),
              ),
                const CustomSizedBox(height: 16,),

                Text('Our licenced companies :'.translateWord,style: AppStyle.textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),
              const CustomSizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(LicencedCompanyModel company in createdController.licencedCompanies)
                    ...[
                      MainPageCard(
                        onPressed: (){},
                        title: company.name,
                        imagePath: company.image,
                        subtitle: company.description,
                    ),
                      const CustomSizedBox(width: 16,),
                    ],
                  ],
                ),
              ),
              const CustomSizedBox(height: 104,)
              ]
    ),
        ),
      ));
  }
}
