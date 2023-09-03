
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel{

  factory CommentModel({
    @JsonKey(name: 'note') required String comment,
    @JsonKey(name: 'value') required int vote,
    required UserOfCommentModel user,
  })=_CommentModel;

  factory CommentModel.fromJson( Map<String,dynamic> data)=>_$CommentModelFromJson(data);

}


@JsonSerializable()
class UserOfCommentModel {

  final String name;

  UserOfCommentModel({
    required this.name,
    });

  factory UserOfCommentModel.fromJson( Map<String,dynamic> data)=>_$UserOfCommentModelFromJson(data);


}