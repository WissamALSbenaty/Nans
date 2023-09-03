
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_details_model.freezed.dart';
part 'news_details_model.g.dart';

@freezed
class NewsDetailsModel with _$NewsDetailsModel{

  const NewsDetailsModel._();

  factory NewsDetailsModel({
    required String description,
    required String id,
    required String title,
    @JsonKey(name: 'image') String? imagePath,
    @JsonKey(fromJson: DateTime.parse,name: 'createdAt') required DateTime creationDate
  })=_NewsDetailsModel;

  factory NewsDetailsModel.fromJson( Map<String,dynamic> data)=>_$NewsDetailsModelFromJson(data);

  String get getDescription {
    String ret=description;
    ret = ret.replaceAll("/[\u0000-\u0019]+/g", "\\n");
    ret = ret.replaceAll("/\\n/g", "\\n");
    ret = ret.replaceAll("/\\'/g", "\\'");
    // ret = ret.replaceAll("/\\"/g", "\\"");
    ret = ret.replaceAll("/\\&/g", "\\&");
    ret = ret.replaceAll("/\\r/g", "\\r");
    ret = ret.replaceAll("/\\t/g", "\\t");
    ret = ret.replaceAll("/\\b/g", "\\b");
    ret = ret.replaceAll("/\\f/g", "\\f");
    ret = ret.replaceAll("\r", "\\r");
    // ret = ret.replaceAll(r"\'", "'");
    ret = ret.replaceAll('\n', '<br>');


    return ret;
  }
}