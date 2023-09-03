// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterModel {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fatherName => throw _privateConstructorUsedError;
  String get motherName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  GenderType get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res, RegisterModel>;
  @useResult
  $Res call(
      {String email,
      String name,
      String fatherName,
      String motherName,
      String phoneNumber,
      String password,
      GenderType gender});
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res, $Val extends RegisterModel>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? fatherName = null,
    Object? motherName = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      motherName: null == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$$_RegisterModelCopyWith(
          _$_RegisterModel value, $Res Function(_$_RegisterModel) then) =
      __$$_RegisterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String name,
      String fatherName,
      String motherName,
      String phoneNumber,
      String password,
      GenderType gender});
}

/// @nodoc
class __$$_RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res, _$_RegisterModel>
    implements _$$_RegisterModelCopyWith<$Res> {
  __$$_RegisterModelCopyWithImpl(
      _$_RegisterModel _value, $Res Function(_$_RegisterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? fatherName = null,
    Object? motherName = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? gender = null,
  }) {
    return _then(_$_RegisterModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      motherName: null == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  _$_RegisterModel(
      {required this.email,
      required this.name,
      required this.fatherName,
      required this.motherName,
      required this.phoneNumber,
      required this.password,
      required this.gender});

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelFromJson(json);

  @override
  final String email;
  @override
  final String name;
  @override
  final String fatherName;
  @override
  final String motherName;
  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final GenderType gender;

  @override
  String toString() {
    return 'RegisterModel(email: $email, name: $name, fatherName: $fatherName, motherName: $motherName, phoneNumber: $phoneNumber, password: $password, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.motherName, motherName) ||
                other.motherName == motherName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name, fatherName,
      motherName, phoneNumber, password, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      __$$_RegisterModelCopyWithImpl<_$_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelToJson(
      this,
    );
  }
}

abstract class _RegisterModel implements RegisterModel {
  factory _RegisterModel(
      {required final String email,
      required final String name,
      required final String fatherName,
      required final String motherName,
      required final String phoneNumber,
      required final String password,
      required final GenderType gender}) = _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  String get fatherName;
  @override
  String get motherName;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  GenderType get gender;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
