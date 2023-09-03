// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserOfCommentModel _$UserOfCommentModelFromJson(Map<String, dynamic> json) =>
    UserOfCommentModel(
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserOfCommentModelToJson(UserOfCommentModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      comment: json['note'] as String,
      vote: json['value'] as int,
      user: UserOfCommentModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'note': instance.comment,
      'value': instance.vote,
      'user': instance.user,
    };
