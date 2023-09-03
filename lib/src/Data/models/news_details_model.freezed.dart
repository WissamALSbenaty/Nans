// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDetailsModel _$NewsDetailsModelFromJson(Map<String, dynamic> json) {
  return _NewsDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsDetailsModel {
  String get description => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(fromJson: DateTime.parse, name: 'createdAt')
  DateTime get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDetailsModelCopyWith<NewsDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDetailsModelCopyWith<$Res> {
  factory $NewsDetailsModelCopyWith(
          NewsDetailsModel value, $Res Function(NewsDetailsModel) then) =
      _$NewsDetailsModelCopyWithImpl<$Res, NewsDetailsModel>;
  @useResult
  $Res call(
      {String description,
      String id,
      String title,
      @JsonKey(name: 'image')
          String? imagePath,
      @JsonKey(fromJson: DateTime.parse, name: 'createdAt')
          DateTime creationDate});
}

/// @nodoc
class _$NewsDetailsModelCopyWithImpl<$Res, $Val extends NewsDetailsModel>
    implements $NewsDetailsModelCopyWith<$Res> {
  _$NewsDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? id = null,
    Object? title = null,
    Object? imagePath = freezed,
    Object? creationDate = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsDetailsModelCopyWith<$Res>
    implements $NewsDetailsModelCopyWith<$Res> {
  factory _$$_NewsDetailsModelCopyWith(
          _$_NewsDetailsModel value, $Res Function(_$_NewsDetailsModel) then) =
      __$$_NewsDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String id,
      String title,
      @JsonKey(name: 'image')
          String? imagePath,
      @JsonKey(fromJson: DateTime.parse, name: 'createdAt')
          DateTime creationDate});
}

/// @nodoc
class __$$_NewsDetailsModelCopyWithImpl<$Res>
    extends _$NewsDetailsModelCopyWithImpl<$Res, _$_NewsDetailsModel>
    implements _$$_NewsDetailsModelCopyWith<$Res> {
  __$$_NewsDetailsModelCopyWithImpl(
      _$_NewsDetailsModel _value, $Res Function(_$_NewsDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? id = null,
    Object? title = null,
    Object? imagePath = freezed,
    Object? creationDate = null,
  }) {
    return _then(_$_NewsDetailsModel(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsDetailsModel extends _NewsDetailsModel {
  _$_NewsDetailsModel(
      {required this.description,
      required this.id,
      required this.title,
      @JsonKey(name: 'image')
          this.imagePath,
      @JsonKey(fromJson: DateTime.parse, name: 'createdAt')
          required this.creationDate})
      : super._();

  factory _$_NewsDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDetailsModelFromJson(json);

  @override
  final String description;
  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'image')
  final String? imagePath;
  @override
  @JsonKey(fromJson: DateTime.parse, name: 'createdAt')
  final DateTime creationDate;

  @override
  String toString() {
    return 'NewsDetailsModel(description: $description, id: $id, title: $title, imagePath: $imagePath, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsDetailsModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, id, title, imagePath, creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsDetailsModelCopyWith<_$_NewsDetailsModel> get copyWith =>
      __$$_NewsDetailsModelCopyWithImpl<_$_NewsDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDetailsModelToJson(
      this,
    );
  }
}

abstract class _NewsDetailsModel extends NewsDetailsModel {
  factory _NewsDetailsModel(
      {required final String description,
      required final String id,
      required final String title,
      @JsonKey(name: 'image')
          final String? imagePath,
      @JsonKey(fromJson: DateTime.parse, name: 'createdAt')
          required final DateTime creationDate}) = _$_NewsDetailsModel;
  _NewsDetailsModel._() : super._();

  factory _NewsDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_NewsDetailsModel.fromJson;

  @override
  String get description;
  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'image')
  String? get imagePath;
  @override
  @JsonKey(fromJson: DateTime.parse, name: 'createdAt')
  DateTime get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$_NewsDetailsModelCopyWith<_$_NewsDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
