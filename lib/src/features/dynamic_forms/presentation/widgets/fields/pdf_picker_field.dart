import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';

class PdfPickerField extends StatefulWidget {

  final FilePickerFieldModel model;
  final DynamicFormController controller;
  const PdfPickerField({Key? key,required this.model, required this.controller}) : super(key: key);

  @override
  State<PdfPickerField> createState() => _PdfPickerFieldState();
}

class _PdfPickerFieldState extends State<PdfPickerField> {
  String? selectedPdfName;

  void selectPdf()async{
    var result =await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    setState(() {
      result!=null ? widget.controller.changeFile(widget.model.key,result.files.first.path):
      widget.controller.changeFile(widget.model.key, null);

      selectedPdfName=result?.files.first.name;
    });
  }

  void removePdf(){
    setState(() {
      selectedPdfName=null;
      widget.controller.changeFile(widget.model.key, null);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(widget.model.key,style: AppStyle.textTheme.bodyMedium,),
        const CustomSizedBox(height: 8,),
        GestureDetector(
            onTap: selectPdf,
            child: selectedPdfName==null? Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppStyle.blackColor.shade100,
              ),
              height: 128.r,
              width: 128.r,
              child:Center(
                child:Icon(Icons.add,size: 48.r,color: AppStyle.blackColor.shade300,)
                ),
            ):ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: AppStyle.blackColor.shade200
                )
              ),
              contentPadding: EdgeInsets.zero,

              leading: Container(
                height: 160.r,
                width: 60.r,
                color: Colors.red,
                child: Center(child: Text('Pdf',style: AppStyle.textTheme.bodyMedium!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
              trailing: IconButton(
                onPressed: removePdf,
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
              title: Row(
                children: [
                  Text(
                      selectedPdfName!,
                    style: AppStyle.textTheme.bodyMedium!.copyWith(color: AppStyle.blackColor),
                  ),

                ],
              ),
            )

        ),
      ],
    );
  }
}
