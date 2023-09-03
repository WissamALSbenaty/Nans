// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  @JsonKey(name: 'note')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  int get vote => throw _privateConstructorUsedError;
  UserOfCommentModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'note') String comment,
      @JsonKey(name: 'value') int vote,
      UserOfCommentModel user});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? vote = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      vote: null == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserOfCommentModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentModelCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$_CommentModelCopyWith(
          _$_CommentModel value, $Res Function(_$_CommentModel) then) =
      __$$_CommentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'note') String comment,
      @JsonKey(name: 'value') int vote,
      UserOfCommentModel user});
}

/// @nodoc
class __$$_CommentModelCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$_CommentModel>
    implements _$$_CommentModelCopyWith<$Res> {
  __$$_CommentModelCopyWithImpl(
      _$_CommentModel _value, $Res Function(_$_CommentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? vote = null,
    Object? user = null,
  }) {
    return _then(_$_CommentModel(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      vote: null == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserOfCommentModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentModel implements _CommentModel {
  _$_CommentModel(
      {@JsonKey(name: 'note') required this.comment,
      @JsonKey(name: 'value') required this.vote,
      required this.user});

  factory _$_CommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommentModelFromJson(json);

  @override
  @JsonKey(name: 'note')
  final String comment;
  @override
  @JsonKey(name: 'value')
  final int vote;
  @override
  final UserOfCommentModel user;

  @override
  String toString() {
    return 'CommentModel(comment: $comment, vote: $vote, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentModel &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.vote, vote) || other.vote == vote) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comment, vote, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentModelCopyWith<_$_CommentModel> get copyWith =>
      __$$_CommentModelCopyWithImpl<_$_CommentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentModelToJson(
      this,
    );
  }
}

abstract class _CommentModel implements CommentModel {
  factory _CommentModel(
      {@JsonKey(name: 'note') required final String comment,
      @JsonKey(name: 'value') required final int vote,
      required final UserOfCommentModel user}) = _$_CommentModel;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$_CommentModel.fromJson;

  @override
  @JsonKey(name: 'note')
  String get comment;
  @override
  @JsonKey(name: 'value')
  int get vote;
  @override
  UserOfCommentModel get user;
  @override
  @JsonKey(ignore: true)
  _$$_CommentModelCopyWith<_$_CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
