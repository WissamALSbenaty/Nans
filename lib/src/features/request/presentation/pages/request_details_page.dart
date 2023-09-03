import 'package:auto_route/annotations.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/models/stage_model.dart';
import 'package:nans/src/core/presentation/dialogs/custom_dialog.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_network_image.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/negative_button.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/request/controllers/request_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/features/request/presentation/widgets/submit_rating_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class RequestDetailsPage extends StatefulWidget {
  final String id;
  const RequestDetailsPage({required this.id, Key? key}) : super(key: key);

  @override
  State<RequestDetailsPage> createState() => _RequestDetailsPageState();
}

class _RequestDetailsPageState extends State<RequestDetailsPage>{
  late RequestDetailsController requestDetailsController;

    @override
    void initState() {
      requestDetailsController=getIt<RequestDetailsController>(param1:widget.id );
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyle.blue ,
        appBar:CustomAppBar(
          barTitle: 'Request Details',
          context: context,
          barActions: const [
          ],
        ),


        body:  ObjectDataLoaderWidget<RequestDetailsModel>(
            dataLoader:requestDetailsController,
            childBuilder: (data)=>Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomNetworkImage(imagePath: data.service.image,height: 250.h,width: 375.w,radius: BorderRadius.zero),
                const CustomSizedBox(height: 16,),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal:  24.w,vertical:  32.h,),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:  [
                          Text(data.service.title,style: AppStyle.textTheme.bodyLarge,),
                          const CustomSizedBox(height: 4,),
                          Text('${data.status} - ${data.creationDate.dayFormat}',style: AppStyle.textTheme.bodySmall,),
                          const CustomSizedBox(height: 4,),
                          Text(data.department.title,style: AppStyle.textTheme.bodySmall,),
                          const CustomSizedBox(height: 8,),

                          for(MapEntry<String,dynamic> entry in data.form.entries)
                            ...[
                              GestureDetector(
                                onTap: ()=>entry.value.toString().trim().startsWith('https')?launch(entry.value.toString().trim()):null,
                                child: Text('${entry.key} : ${entry.value is List?
                                entry.value.fold("",(prev,e)=> "$prev  $e"):entry.value.toString().trim() }'
                                  ,style: AppStyle.textTheme.titleLarge!.copyWith(
                                    color: entry.value.toString().startsWith('https')?Colors.blue:null,
                                    decoration: entry.value.toString().trim().startsWith('https')?TextDecoration.underline:null,
                                  ),),
                              ),
                              const CustomSizedBox(height: 8,),
                            ],

                          if(data.documents!=null)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [

                                Text('Attachments:',style: AppStyle.textTheme.bodyMedium),

                                const CustomSizedBox(height: 8,),
                          for(String url in data.documents!)
                            ...[
                              GestureDetector(
                                onTap: ()=>launch(url),
                                child: Text(url,style: AppStyle.textTheme.titleLarge!.copyWith(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),),
                              ),
                              CustomSizedBox(height: 4,),
                              ],
                            ],
                            ),



                          const CustomSizedBox(height: 16,),
                          Text('Stages:',style: AppStyle.textTheme.bodyMedium),
                          const CustomSizedBox(height: 8,),

                          for(StageModel stage in data.stages)
                            ...[
                              ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                    side:const BorderSide(color: AppStyle.primary),
                                  ),
                                  title: Text(
                                    stage.title,style: AppStyle.textTheme.bodySmall,
                                  ),
                                  subtitle: Text(
                                    stage.status,style: AppStyle.textTheme.bodySmall!.copyWith(
                                    color: stage.status=="FINISHED"? AppStyle.green:stage.status=="ABORTED"?AppStyle.errorColor:AppStyle.blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),


                              ),

                              const CustomSizedBox(height: 8,),
                            ],



                        ]),
                  ),
                ),

                if(data.status=="FINISHED"||data.status=="منتهية")
                  ...[
                    Center(
                      child: MainButton(title: 'Rate this service'.translateWord,
                          isLoading: false,
                          onPressed:()=>showCustomDialog(dialog:  SubmitRatingDialog(

    onSubmitDialog:({required int givenStars,required String comment})=>
    requestDetailsController.rateService(vote: givenStars, comment: comment))),
                    )),

                    const CustomSizedBox(height: 16,),
                  ],
                if(data.status=="PENDING"|| data.status=="قيد الانتظار")
                  ...[
                  Center(
                    child: NegativeButton(title: 'Cancel request'.translateWord,
                        onPressed:requestDetailsController.cancelRequest),
                  ),
                  const CustomSizedBox(height: 16,),
                ]
              ],
            )));
  }
}
