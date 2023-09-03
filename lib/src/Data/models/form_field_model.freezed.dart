// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormFieldModel _$FormFieldModelFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'TEXT':
      return TextFieldModel.fromJson(json);
    case 'NUMBER':
      return NumericFieldModel.fromJson(json);
    case 'SELECT':
      return SelectFieldModel.fromJson(json);
    case 'RADIO':
      return RadioFieldModel.fromJson(json);
    case 'CHECKBOX':
      return CheckboxFieldModel.fromJson(json);
    case 'DATE_PICKER':
      return DatePickerFieldModel.fromJson(json);
    case 'UPLOAD':
      return FilePickerFieldModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'FormFieldModel',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$FormFieldModel {
  ValidationModel get validation => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidationModel validation, String key)
        textFieldModel,
    required TResult Function(ValidationModel validation, String key)
        numericFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        selectFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        radioFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        checkboxFieldModel,
    required TResult Function(ValidationModel validation, String key)
        datePickerFieldModel,
    required TResult Function(ValidationModel validation, String key)
        filePickerFieldModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidationModel validation, String key)? textFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        numericFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        filePickerFieldModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidationModel validation, String key)? textFieldModel,
    TResult Function(ValidationModel validation, String key)? numericFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult Function(ValidationModel validation, String key)?
        filePickerFieldModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldModel value) textFieldModel,
    required TResult Function(NumericFieldModel value) numericFieldModel,
    required TResult Function(SelectFieldModel value) selectFieldModel,
    required TResult Function(RadioFieldModel value) radioFieldModel,
    required TResult Function(CheckboxFieldModel value) checkboxFieldModel,
    required TResult Function(DatePickerFieldModel value) datePickerFieldModel,
    required TResult Function(FilePickerFieldModel value) filePickerFieldModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldModel value)? textFieldModel,
    TResult? Function(NumericFieldModel value)? numericFieldModel,
    TResult? Function(SelectFieldModel value)? selectFieldModel,
    TResult? Function(RadioFieldModel value)? radioFieldModel,
    TResult? Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult? Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult? Function(FilePickerFieldModel value)? filePickerFieldModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldModel value)? textFieldModel,
    TResult Function(NumericFieldModel value)? numericFieldModel,
    TResult Function(SelectFieldModel value)? selectFieldModel,
    TResult Function(RadioFieldModel value)? radioFieldModel,
    TResult Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult Function(FilePickerFieldModel value)? filePickerFieldModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormFieldModelCopyWith<FormFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldModelCopyWith<$Res> {
  factory $FormFieldModelCopyWith(
          FormFieldModel value, $Res Function(FormFieldModel) then) =
      _$FormFieldModelCopyWithImpl<$Res, FormFieldModel>;
  @useResult
  $Res call({ValidationModel validation, String key});
}

/// @nodoc
class _$FormFieldModelCopyWithImpl<$Res, $Val extends FormFieldModel>
    implements $FormFieldModelCopyWith<$Res> {
  _$FormFieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validation = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationModel,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextFieldModelCopyWith<$Res>
    implements $FormFieldModelCopyWith<$Res> {
  factory _$$TextFieldModelCopyWith(
          _$TextFieldModel value, $Res Function(_$TextFieldModel) then) =
      __$$TextFieldModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValidationModel validation, String key});
}

/// @nodoc
class __$$TextFieldModelCopyWithImpl<$Res>
    extends _$FormFieldModelCopyWithImpl<$Res, _$TextFieldModel>
    implements _$$TextFieldModelCopyWith<$Res> {
  __$$TextFieldModelCopyWithImpl(
      _$TextFieldModel _value, $Res Function(_$TextFieldModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validation = null,
    Object? key = null,
  }) {
    return _then(_$TextFieldModel(
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationModel,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextFieldModel implements TextFieldModel {
  const _$TextFieldModel(
      {required this.validation, required this.key, final String? $type})
      : $type = $type ?? 'TEXT';

  factory _$TextFieldModel.fromJson(Map<String, dynamic> json) =>
      _$$TextFieldModelFromJson(json);

  @override
  final ValidationModel validation;
  @override
  final String key;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FormFieldModel.textFieldModel(validation: $validation, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFieldModel &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, validation, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFieldModelCopyWith<_$TextFieldModel> get copyWith =>
      __$$TextFieldModelCopyWithImpl<_$TextFieldModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidationModel validation, String key)
        textFieldModel,
    required TResult Function(ValidationModel validation, String key)
        numericFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        selectFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        radioFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        checkboxFieldModel,
    required TResult Function(ValidationModel validation, String key)
        datePickerFieldModel,
    required TResult Function(ValidationModel validation, String key)
        filePickerFieldModel,
  }) {
    return textFieldModel(validation, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidationModel validation, String key)? textFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        numericFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        filePickerFieldModel,
  }) {
    return textFieldModel?.call(validation, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidationModel validation, String key)? textFieldModel,
    TResult Function(ValidationModel validation, String key)? numericFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult Function(ValidationModel validation, String key)?
        filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (textFieldModel != null) {
      return textFieldModel(validation, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldModel value) textFieldModel,
    required TResult Function(NumericFieldModel value) numericFieldModel,
    required TResult Function(SelectFieldModel value) selectFieldModel,
    required TResult Function(RadioFieldModel value) radioFieldModel,
    required TResult Function(CheckboxFieldModel value) checkboxFieldModel,
    required TResult Function(DatePickerFieldModel value) datePickerFieldModel,
    required TResult Function(FilePickerFieldModel value) filePickerFieldModel,
  }) {
    return textFieldModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldModel value)? textFieldModel,
    TResult? Function(NumericFieldModel value)? numericFieldModel,
    TResult? Function(SelectFieldModel value)? selectFieldModel,
    TResult? Function(RadioFieldModel value)? radioFieldModel,
    TResult? Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult? Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult? Function(FilePickerFieldModel value)? filePickerFieldModel,
  }) {
    return textFieldModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldModel value)? textFieldModel,
    TResult Function(NumericFieldModel value)? numericFieldModel,
    TResult Function(SelectFieldModel value)? selectFieldModel,
    TResult Function(RadioFieldModel value)? radioFieldModel,
    TResult Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult Function(FilePickerFieldModel value)? filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (textFieldModel != null) {
      return textFieldModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextFieldModelToJson(
      this,
    );
  }
}

abstract class TextFieldModel implements FormFieldModel {
  const factory TextFieldModel(
      {required final ValidationModel validation,
      required final String key}) = _$TextFieldModel;

  factory TextFieldModel.fromJson(Map<String, dynamic> json) =
      _$TextFieldModel.fromJson;

  @override
  ValidationModel get validation;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$TextFieldModelCopyWith<_$TextFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumericFieldModelCopyWith<$Res>
    implements $FormFieldModelCopyWith<$Res> {
  factory _$$NumericFieldModelCopyWith(
          _$NumericFieldModel value, $Res Function(_$NumericFieldModel) then) =
      __$$NumericFieldModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValidationModel validation, String key});
}

/// @nodoc
class __$$NumericFieldModelCopyWithImpl<$Res>
    extends _$FormFieldModelCopyWithImpl<$Res, _$NumericFieldModel>
    implements _$$NumericFieldModelCopyWith<$Res> {
  __$$NumericFieldModelCopyWithImpl(
      _$NumericFieldModel _value, $Res Function(_$NumericFieldModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validation = null,
    Object? key = null,
  }) {
    return _then(_$NumericFieldModel(
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationModel,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumericFieldModel implements NumericFieldModel {
  const _$NumericFieldModel(
      {required this.validation, required this.key, final String? $type})
      : $type = $type ?? 'NUMBER';

  factory _$NumericFieldModel.fromJson(Map<String, dynamic> json) =>
      _$$NumericFieldModelFromJson(json);

  @override
  final ValidationModel validation;
  @override
  final String key;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FormFieldModel.numericFieldModel(validation: $validation, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumericFieldModel &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, validation, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumericFieldModelCopyWith<_$NumericFieldModel> get copyWith =>
      __$$NumericFieldModelCopyWithImpl<_$NumericFieldModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidationModel validation, String key)
        textFieldModel,
    required TResult Function(ValidationModel validation, String key)
        numericFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        selectFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        radioFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        checkboxFieldModel,
    required TResult Function(ValidationModel validation, String key)
        datePickerFieldModel,
    required TResult Function(ValidationModel validation, String key)
        filePickerFieldModel,
  }) {
    return numericFieldModel(validation, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidationModel validation, String key)? textFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        numericFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        filePickerFieldModel,
  }) {
    return numericFieldModel?.call(validation, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidationModel validation, String key)? textFieldModel,
    TResult Function(ValidationModel validation, String key)? numericFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult Function(ValidationModel validation, String key)?
        filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (numericFieldModel != null) {
      return numericFieldModel(validation, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldModel value) textFieldModel,
    required TResult Function(NumericFieldModel value) numericFieldModel,
    required TResult Function(SelectFieldModel value) selectFieldModel,
    required TResult Function(RadioFieldModel value) radioFieldModel,
    required TResult Function(CheckboxFieldModel value) checkboxFieldModel,
    required TResult Function(DatePickerFieldModel value) datePickerFieldModel,
    required TResult Function(FilePickerFieldModel value) filePickerFieldModel,
  }) {
    return numericFieldModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldModel value)? textFieldModel,
    TResult? Function(NumericFieldModel value)? numericFieldModel,
    TResult? Function(SelectFieldModel value)? selectFieldModel,
    TResult? Function(RadioFieldModel value)? radioFieldModel,
    TResult? Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult? Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult? Function(FilePickerFieldModel value)? filePickerFieldModel,
  }) {
    return numericFieldModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldModel value)? textFieldModel,
    TResult Function(NumericFieldModel value)? numericFieldModel,
    TResult Function(SelectFieldModel value)? selectFieldModel,
    TResult Function(RadioFieldModel value)? radioFieldModel,
    TResult Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult Function(FilePickerFieldModel value)? filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (numericFieldModel != null) {
      return numericFieldModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumericFieldModelToJson(
      this,
    );
  }
}

abstract class NumericFieldModel implements FormFieldModel {
  const factory NumericFieldModel(
      {required final ValidationModel validation,
      required final String key}) = _$NumericFieldModel;

  factory NumericFieldModel.fromJson(Map<String, dynamic> json) =
      _$NumericFieldModel.fromJson;

  @override
  ValidationModel get validation;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$NumericFieldModelCopyWith<_$NumericFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectFieldModelCopyWith<$Res>
    implements $FormFieldModelCopyWith<$Res> {
  factory _$$SelectFieldModelCopyWith(
          _$SelectFieldModel value, $Res Function(_$SelectFieldModel) then) =
      __$$SelectFieldModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OptionModel> options, ValidationModel validation, String key});
}

/// @nodoc
class __$$SelectFieldModelCopyWithImpl<$Res>
    extends _$FormFieldModelCopyWithImpl<$Res, _$SelectFieldModel>
    implements _$$SelectFieldModelCopyWith<$Res> {
  __$$SelectFieldModelCopyWithImpl(
      _$SelectFieldModel _value, $Res Function(_$SelectFieldModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? validation = null,
    Object? key = null,
  }) {
    return _then(_$SelectFieldModel(
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionModel>,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationModel,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectFieldModel implements SelectFieldModel {
  const _$SelectFieldModel(
      {required final List<OptionModel> options,
      required this.validation,
      required this.key,
      final String? $type})
      : _options = options,
        $type = $type ?? 'SELECT';

  factory _$SelectFieldModel.fromJson(Map<String, dynamic> json) =>
      _$$SelectFieldModelFromJson(json);

  final List<OptionModel> _options;
  @override
  List<OptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final ValidationModel validation;
  @override
  final String key;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FormFieldModel.selectFieldModel(options: $options, validation: $validation, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFieldModel &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_options), validation, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFieldModelCopyWith<_$SelectFieldModel> get copyWith =>
      __$$SelectFieldModelCopyWithImpl<_$SelectFieldModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidationModel validation, String key)
        textFieldModel,
    required TResult Function(ValidationModel validation, String key)
        numericFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        selectFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        radioFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        checkboxFieldModel,
    required TResult Function(ValidationModel validation, String key)
        datePickerFieldModel,
    required TResult Function(ValidationModel validation, String key)
        filePickerFieldModel,
  }) {
    return selectFieldModel(options, validation, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidationModel validation, String key)? textFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        numericFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        filePickerFieldModel,
  }) {
    return selectFieldModel?.call(options, validation, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidationModel validation, String key)? textFieldModel,
    TResult Function(ValidationModel validation, String key)? numericFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult Function(ValidationModel validation, String key)?
        filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (selectFieldModel != null) {
      return selectFieldModel(options, validation, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldModel value) textFieldModel,
    required TResult Function(NumericFieldModel value) numericFieldModel,
    required TResult Function(SelectFieldModel value) selectFieldModel,
    required TResult Function(RadioFieldModel value) radioFieldModel,
    required TResult Function(CheckboxFieldModel value) checkboxFieldModel,
    required TResult Function(DatePickerFieldModel value) datePickerFieldModel,
    required TResult Function(FilePickerFieldModel value) filePickerFieldModel,
  }) {
    return selectFieldModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldModel value)? textFieldModel,
    TResult? Function(NumericFieldModel value)? numericFieldModel,
    TResult? Function(SelectFieldModel value)? selectFieldModel,
    TResult? Function(RadioFieldModel value)? radioFieldModel,
    TResult? Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult? Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult? Function(FilePickerFieldModel value)? filePickerFieldModel,
  }) {
    return selectFieldModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldModel value)? textFieldModel,
    TResult Function(NumericFieldModel value)? numericFieldModel,
    TResult Function(SelectFieldModel value)? selectFieldModel,
    TResult Function(RadioFieldModel value)? radioFieldModel,
    TResult Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult Function(FilePickerFieldModel value)? filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (selectFieldModel != null) {
      return selectFieldModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectFieldModelToJson(
      this,
    );
  }
}

abstract class SelectFieldModel implements FormFieldModel {
  const factory SelectFieldModel(
      {required final List<OptionModel> options,
      required final ValidationModel validation,
      required final String key}) = _$SelectFieldModel;

  factory SelectFieldModel.fromJson(Map<String, dynamic> json) =
      _$SelectFieldModel.fromJson;

  List<OptionModel> get options;
  @override
  ValidationModel get validation;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$SelectFieldModelCopyWith<_$SelectFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioFieldModelCopyWith<$Res>
    implements $FormFieldModelCopyWith<$Res> {
  factory _$$RadioFieldModelCopyWith(
          _$RadioFieldModel value, $Res Function(_$RadioFieldModel) then) =
      __$$RadioFieldModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OptionModel> options, ValidationModel validation, String key});
}

/// @nodoc
class __$$RadioFieldModelCopyWithImpl<$Res>
    extends _$FormFieldModelCopyWithImpl<$Res, _$RadioFieldModel>
    implements _$$RadioFieldModelCopyWith<$Res> {
  __$$RadioFieldModelCopyWithImpl(
      _$RadioFieldModel _value, $Res Function(_$RadioFieldModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? validation = null,
    Object? key = null,
  }) {
    return _then(_$RadioFieldModel(
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionModel>,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationModel,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RadioFieldModel implements RadioFieldModel {
  const _$RadioFieldModel(
      {required final List<OptionModel> options,
      required this.validation,
      required this.key,
      final String? $type})
      : _options = options,
        $type = $type ?? 'RADIO';

  factory _$RadioFieldModel.fromJson(Map<String, dynamic> json) =>
      _$$RadioFieldModelFromJson(json);

  final List<OptionModel> _options;
  @override
  List<OptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final ValidationModel validation;
  @override
  final String key;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FormFieldModel.radioFieldModel(options: $options, validation: $validation, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioFieldModel &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_options), validation, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioFieldModelCopyWith<_$RadioFieldModel> get copyWith =>
      __$$RadioFieldModelCopyWithImpl<_$RadioFieldModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidationModel validation, String key)
        textFieldModel,
    required TResult Function(ValidationModel validation, String key)
        numericFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        selectFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        radioFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        checkboxFieldModel,
    required TResult Function(ValidationModel validation, String key)
        datePickerFieldModel,
    required TResult Function(ValidationModel validation, String key)
        filePickerFieldModel,
  }) {
    return radioFieldModel(options, validation, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidationModel validation, String key)? textFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        numericFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        filePickerFieldModel,
  }) {
    return radioFieldModel?.call(options, validation, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidationModel validation, String key)? textFieldModel,
    TResult Function(ValidationModel validation, String key)? numericFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult Function(ValidationModel validation, String key)?
        filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (radioFieldModel != null) {
      return radioFieldModel(options, validation, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldModel value) textFieldModel,
    required TResult Function(NumericFieldModel value) numericFieldModel,
    required TResult Function(SelectFieldModel value) selectFieldModel,
    required TResult Function(RadioFieldModel value) radioFieldModel,
    required TResult Function(CheckboxFieldModel value) checkboxFieldModel,
    required TResult Function(DatePickerFieldModel value) datePickerFieldModel,
    required TResult Function(FilePickerFieldModel value) filePickerFieldModel,
  }) {
    return radioFieldModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldModel value)? textFieldModel,
    TResult? Function(NumericFieldModel value)? numericFieldModel,
    TResult? Function(SelectFieldModel value)? selectFieldModel,
    TResult? Function(RadioFieldModel value)? radioFieldModel,
    TResult? Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult? Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult? Function(FilePickerFieldModel value)? filePickerFieldModel,
  }) {
    return radioFieldModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldModel value)? textFieldModel,
    TResult Function(NumericFieldModel value)? numericFieldModel,
    TResult Function(SelectFieldModel value)? selectFieldModel,
    TResult Function(RadioFieldModel value)? radioFieldModel,
    TResult Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult Function(FilePickerFieldModel value)? filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (radioFieldModel != null) {
      return radioFieldModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RadioFieldModelToJson(
      this,
    );
  }
}

abstract class RadioFieldModel implements FormFieldModel {
  const factory RadioFieldModel(
      {required final List<OptionModel> options,
      required final ValidationModel validation,
      required final String key}) = _$RadioFieldModel;

  factory RadioFieldModel.fromJson(Map<String, dynamic> json) =
      _$RadioFieldModel.fromJson;

  List<OptionModel> get options;
  @override
  ValidationModel get validation;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$RadioFieldModelCopyWith<_$RadioFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckboxFieldModelCopyWith<$Res>
    implements $FormFieldModelCopyWith<$Res> {
  factory _$$CheckboxFieldModelCopyWith(_$CheckboxFieldModel value,
          $Res Function(_$CheckboxFieldModel) then) =
      __$$CheckboxFieldModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OptionModel> options, ValidationModel validation, String key});
}

/// @nodoc
class __$$CheckboxFieldModelCopyWithImpl<$Res>
    extends _$FormFieldModelCopyWithImpl<$Res, _$CheckboxFieldModel>
    implements _$$CheckboxFieldModelCopyWith<$Res> {
  __$$CheckboxFieldModelCopyWithImpl(
      _$CheckboxFieldModel _value, $Res Function(_$CheckboxFieldModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? validation = null,
    Object? key = null,
  }) {
    return _then(_$CheckboxFieldModel(
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionModel>,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationModel,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckboxFieldModel implements CheckboxFieldModel {
  const _$CheckboxFieldModel(
      {required final List<OptionModel> options,
      required this.validation,
      required this.key,
      final String? $type})
      : _options = options,
        $type = $type ?? 'CHECKBOX';

  factory _$CheckboxFieldModel.fromJson(Map<String, dynamic> json) =>
      _$$CheckboxFieldModelFromJson(json);

  final List<OptionModel> _options;
  @override
  List<OptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final ValidationModel validation;
  @override
  final String key;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FormFieldModel.checkboxFieldModel(options: $options, validation: $validation, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckboxFieldModel &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_options), validation, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckboxFieldModelCopyWith<_$CheckboxFieldModel> get copyWith =>
      __$$CheckboxFieldModelCopyWithImpl<_$CheckboxFieldModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidationModel validation, String key)
        textFieldModel,
    required TResult Function(ValidationModel validation, String key)
        numericFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        selectFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        radioFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        checkboxFieldModel,
    required TResult Function(ValidationModel validation, String key)
        datePickerFieldModel,
    required TResult Function(ValidationModel validation, String key)
        filePickerFieldModel,
  }) {
    return checkboxFieldModel(options, validation, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidationModel validation, String key)? textFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        numericFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        filePickerFieldModel,
  }) {
    return checkboxFieldModel?.call(options, validation, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidationModel validation, String key)? textFieldModel,
    TResult Function(ValidationModel validation, String key)? numericFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult Function(ValidationModel validation, String key)?
        filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (checkboxFieldModel != null) {
      return checkboxFieldModel(options, validation, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldModel value) textFieldModel,
    required TResult Function(NumericFieldModel value) numericFieldModel,
    required TResult Function(SelectFieldModel value) selectFieldModel,
    required TResult Function(RadioFieldModel value) radioFieldModel,
    required TResult Function(CheckboxFieldModel value) checkboxFieldModel,
    required TResult Function(DatePickerFieldModel value) datePickerFieldModel,
    required TResult Function(FilePickerFieldModel value) filePickerFieldModel,
  }) {
    return checkboxFieldModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldModel value)? textFieldModel,
    TResult? Function(NumericFieldModel value)? numericFieldModel,
    TResult? Function(SelectFieldModel value)? selectFieldModel,
    TResult? Function(RadioFieldModel value)? radioFieldModel,
    TResult? Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult? Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult? Function(FilePickerFieldModel value)? filePickerFieldModel,
  }) {
    return checkboxFieldModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldModel value)? textFieldModel,
    TResult Function(NumericFieldModel value)? numericFieldModel,
    TResult Function(SelectFieldModel value)? selectFieldModel,
    TResult Function(RadioFieldModel value)? radioFieldModel,
    TResult Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult Function(FilePickerFieldModel value)? filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (checkboxFieldModel != null) {
      return checkboxFieldModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckboxFieldModelToJson(
      this,
    );
  }
}

abstract class CheckboxFieldModel implements FormFieldModel {
  const factory CheckboxFieldModel(
      {required final List<OptionModel> options,
      required final ValidationModel validation,
      required final String key}) = _$CheckboxFieldModel;

  factory CheckboxFieldModel.fromJson(Map<String, dynamic> json) =
      _$CheckboxFieldModel.fromJson;

  List<OptionModel> get options;
  @override
  ValidationModel get validation;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$CheckboxFieldModelCopyWith<_$CheckboxFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatePickerFieldModelCopyWith<$Res>
    implements $FormFieldModelCopyWith<$Res> {
  factory _$$DatePickerFieldModelCopyWith(_$DatePickerFieldModel value,
          $Res Function(_$DatePickerFieldModel) then) =
      __$$DatePickerFieldModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValidationModel validation, String key});
}

/// @nodoc
class __$$DatePickerFieldModelCopyWithImpl<$Res>
    extends _$FormFieldModelCopyWithImpl<$Res, _$DatePickerFieldModel>
    implements _$$DatePickerFieldModelCopyWith<$Res> {
  __$$DatePickerFieldModelCopyWithImpl(_$DatePickerFieldModel _value,
      $Res Function(_$DatePickerFieldModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validation = null,
    Object? key = null,
  }) {
    return _then(_$DatePickerFieldModel(
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationModel,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatePickerFieldModel implements DatePickerFieldModel {
  const _$DatePickerFieldModel(
      {required this.validation, required this.key, final String? $type})
      : $type = $type ?? 'DATE_PICKER';

  factory _$DatePickerFieldModel.fromJson(Map<String, dynamic> json) =>
      _$$DatePickerFieldModelFromJson(json);

  @override
  final ValidationModel validation;
  @override
  final String key;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FormFieldModel.datePickerFieldModel(validation: $validation, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatePickerFieldModel &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, validation, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatePickerFieldModelCopyWith<_$DatePickerFieldModel> get copyWith =>
      __$$DatePickerFieldModelCopyWithImpl<_$DatePickerFieldModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidationModel validation, String key)
        textFieldModel,
    required TResult Function(ValidationModel validation, String key)
        numericFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        selectFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        radioFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        checkboxFieldModel,
    required TResult Function(ValidationModel validation, String key)
        datePickerFieldModel,
    required TResult Function(ValidationModel validation, String key)
        filePickerFieldModel,
  }) {
    return datePickerFieldModel(validation, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidationModel validation, String key)? textFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        numericFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        filePickerFieldModel,
  }) {
    return datePickerFieldModel?.call(validation, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidationModel validation, String key)? textFieldModel,
    TResult Function(ValidationModel validation, String key)? numericFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult Function(ValidationModel validation, String key)?
        filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (datePickerFieldModel != null) {
      return datePickerFieldModel(validation, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldModel value) textFieldModel,
    required TResult Function(NumericFieldModel value) numericFieldModel,
    required TResult Function(SelectFieldModel value) selectFieldModel,
    required TResult Function(RadioFieldModel value) radioFieldModel,
    required TResult Function(CheckboxFieldModel value) checkboxFieldModel,
    required TResult Function(DatePickerFieldModel value) datePickerFieldModel,
    required TResult Function(FilePickerFieldModel value) filePickerFieldModel,
  }) {
    return datePickerFieldModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldModel value)? textFieldModel,
    TResult? Function(NumericFieldModel value)? numericFieldModel,
    TResult? Function(SelectFieldModel value)? selectFieldModel,
    TResult? Function(RadioFieldModel value)? radioFieldModel,
    TResult? Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult? Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult? Function(FilePickerFieldModel value)? filePickerFieldModel,
  }) {
    return datePickerFieldModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldModel value)? textFieldModel,
    TResult Function(NumericFieldModel value)? numericFieldModel,
    TResult Function(SelectFieldModel value)? selectFieldModel,
    TResult Function(RadioFieldModel value)? radioFieldModel,
    TResult Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult Function(FilePickerFieldModel value)? filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (datePickerFieldModel != null) {
      return datePickerFieldModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DatePickerFieldModelToJson(
      this,
    );
  }
}

abstract class DatePickerFieldModel implements FormFieldModel {
  const factory DatePickerFieldModel(
      {required final ValidationModel validation,
      required final String key}) = _$DatePickerFieldModel;

  factory DatePickerFieldModel.fromJson(Map<String, dynamic> json) =
      _$DatePickerFieldModel.fromJson;

  @override
  ValidationModel get validation;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$DatePickerFieldModelCopyWith<_$DatePickerFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilePickerFieldModelCopyWith<$Res>
    implements $FormFieldModelCopyWith<$Res> {
  factory _$$FilePickerFieldModelCopyWith(_$FilePickerFieldModel value,
          $Res Function(_$FilePickerFieldModel) then) =
      __$$FilePickerFieldModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValidationModel validation, String key});
}

/// @nodoc
class __$$FilePickerFieldModelCopyWithImpl<$Res>
    extends _$FormFieldModelCopyWithImpl<$Res, _$FilePickerFieldModel>
    implements _$$FilePickerFieldModelCopyWith<$Res> {
  __$$FilePickerFieldModelCopyWithImpl(_$FilePickerFieldModel _value,
      $Res Function(_$FilePickerFieldModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validation = null,
    Object? key = null,
  }) {
    return _then(_$FilePickerFieldModel(
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationModel,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilePickerFieldModel implements FilePickerFieldModel {
  const _$FilePickerFieldModel(
      {required this.validation, required this.key, final String? $type})
      : $type = $type ?? 'UPLOAD';

  factory _$FilePickerFieldModel.fromJson(Map<String, dynamic> json) =>
      _$$FilePickerFieldModelFromJson(json);

  @override
  final ValidationModel validation;
  @override
  final String key;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FormFieldModel.filePickerFieldModel(validation: $validation, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilePickerFieldModel &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, validation, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilePickerFieldModelCopyWith<_$FilePickerFieldModel> get copyWith =>
      __$$FilePickerFieldModelCopyWithImpl<_$FilePickerFieldModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidationModel validation, String key)
        textFieldModel,
    required TResult Function(ValidationModel validation, String key)
        numericFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        selectFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        radioFieldModel,
    required TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)
        checkboxFieldModel,
    required TResult Function(ValidationModel validation, String key)
        datePickerFieldModel,
    required TResult Function(ValidationModel validation, String key)
        filePickerFieldModel,
  }) {
    return filePickerFieldModel(validation, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidationModel validation, String key)? textFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        numericFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult? Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult? Function(ValidationModel validation, String key)?
        filePickerFieldModel,
  }) {
    return filePickerFieldModel?.call(validation, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidationModel validation, String key)? textFieldModel,
    TResult Function(ValidationModel validation, String key)? numericFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        selectFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        radioFieldModel,
    TResult Function(
            List<OptionModel> options, ValidationModel validation, String key)?
        checkboxFieldModel,
    TResult Function(ValidationModel validation, String key)?
        datePickerFieldModel,
    TResult Function(ValidationModel validation, String key)?
        filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (filePickerFieldModel != null) {
      return filePickerFieldModel(validation, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldModel value) textFieldModel,
    required TResult Function(NumericFieldModel value) numericFieldModel,
    required TResult Function(SelectFieldModel value) selectFieldModel,
    required TResult Function(RadioFieldModel value) radioFieldModel,
    required TResult Function(CheckboxFieldModel value) checkboxFieldModel,
    required TResult Function(DatePickerFieldModel value) datePickerFieldModel,
    required TResult Function(FilePickerFieldModel value) filePickerFieldModel,
  }) {
    return filePickerFieldModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldModel value)? textFieldModel,
    TResult? Function(NumericFieldModel value)? numericFieldModel,
    TResult? Function(SelectFieldModel value)? selectFieldModel,
    TResult? Function(RadioFieldModel value)? radioFieldModel,
    TResult? Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult? Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult? Function(FilePickerFieldModel value)? filePickerFieldModel,
  }) {
    return filePickerFieldModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldModel value)? textFieldModel,
    TResult Function(NumericFieldModel value)? numericFieldModel,
    TResult Function(SelectFieldModel value)? selectFieldModel,
    TResult Function(RadioFieldModel value)? radioFieldModel,
    TResult Function(CheckboxFieldModel value)? checkboxFieldModel,
    TResult Function(DatePickerFieldModel value)? datePickerFieldModel,
    TResult Function(FilePickerFieldModel value)? filePickerFieldModel,
    required TResult orElse(),
  }) {
    if (filePickerFieldModel != null) {
      return filePickerFieldModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FilePickerFieldModelToJson(
      this,
    );
  }
}

abstract class FilePickerFieldModel implements FormFieldModel {
  const factory FilePickerFieldModel(
      {required final ValidationModel validation,
      required final String key}) = _$FilePickerFieldModel;

  factory FilePickerFieldModel.fromJson(Map<String, dynamic> json) =
      _$FilePickerFieldModel.fromJson;

  @override
  ValidationModel get validation;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$FilePickerFieldModelCopyWith<_$FilePickerFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}
