import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/models/comment_model.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_network_image.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/details/controllers/service_details_controller.dart';
import 'package:nans/src/features/details/presentation/widgets/single_comment_widget.dart';

@RoutePage()
class ServiceDetailsPage extends StatelessWidget with WidgetControllerCreatorMixin<AppController> {
  final String id;
   ServiceDetailsPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ObjectDataLoaderWidget(
        dataLoader: getIt<ServiceDetailsController>(param1: id),
        childBuilder: (data ) =>Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomNetworkImage(imagePath: data.image,height: 250.h,width: 375.w,radius: BorderRadius.zero),
            const CustomSizedBox(height: 16,),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomSizedBox(height: 8,),
                    Text(data.title,style: AppStyle.textTheme.headlineSmall,),
                    const CustomSizedBox(height: 4,),
                    Text(data.department.title,style: AppStyle.textTheme.bodySmall,),
                    const CustomSizedBox(height: 8,),


                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Html(data:"<p>Destruction of the<strong> ciliary ganglion</strong> interrupts <strong>postganglionic parasympathetic fibers</strong>, which innervate the sphincter pupillae and ciliaris; this results in-</p><ul><li><strong>loss of the direct pupillary reflex, </strong></li><li><strong>mydriasis, and </strong></li><li><strong>loss of accommodation.</strong></li></ul><p><strong>TREASURE</strong></p><table><tbody><tr><td><p><strong>Ganglion </strong></p></td><td><p><strong>Topographically Related To </strong></p></td><td><p><strong>Functionally Related To </strong></p></td><td><p><strong>Supplies </strong></p></td></tr><tr><td><p><strong>Otic</strong></p></td><td><p>Mandibular nerve&nbsp;</p></td><td><p>Glossopharyngeal nerve&nbsp;</p></td><td><p>Parotid gland</p></td></tr><tr><td><p><strong>Pterygopalatine</strong></p></td><td><p>Maxillary nerve&nbsp;</p></td><td><p>Greater petrosal nerve&nbsp;</p></td><td><p>Lacrimal, nasal, palatine, pharyngeal glands</p></td></tr><tr><td><p><strong>Submandibular</strong></p></td><td><p>Lingual nerve</p></td><td><p>Chorda tympani nerve</p></td><td><p>Submandibular and sublingual glands</p></td></tr><tr><td><p><strong>Ciliary</strong></p></td><td><p>Nasociliary nerve</p></td><td><p>Oculomotor nerve</p></td><td><p>Ciliaris</p><p>Sphincter and dilator pupillae</p></td></tr></tbody></table>",
                              style: {
    "table": Style(
    backgroundColor: Colors.white,
    ),
    "tr": Style(
    padding:  HtmlPaddings.all(2),
    border: Border.all(color: Colors.black)),
    "th": Style(
    padding:  HtmlPaddings.all(2),
    border: Border.all(color: Colors.black)),
    "td": Style(
    padding:  HtmlPaddings.all(2),
    border: Border.all(color: Colors.black)),
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
                            CustomSizedBox(height: 32,),
                            Text('Comments:',style: AppStyle.textTheme.bodySmall,),
                            for(CommentModel comment in data.comments)
                              ...[
                                const CustomSizedBox(height: 10,),
                                SingleCommentWidget(comment: comment),
                              ]
                          ],
                        ),
                      ),
                    ),
                    const CustomSizedBox(height: 16,),
                    MainButton(title: 'Apply Now'.translateWord,
                        isLoading: false,
                        onPressed:()=> (createdController.currentUser?.token.isNotEmpty ?? false) ? appRouter.push(FormSubmittingRoute(serviceDetailsModel:data)):
                        appRouter.push(const LoginRoute())
                    ),

                    const CustomSizedBox(height: 16,),

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
