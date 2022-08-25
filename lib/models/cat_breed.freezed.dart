// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_breed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatBreed _$CatBreedFromJson(Map<String, dynamic> json) {
  return _CatBreed.fromJson(json);
}

/// @nodoc
mixin _$CatBreed {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatBreedCopyWith<CatBreed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatBreedCopyWith<$Res> {
  factory $CatBreedCopyWith(CatBreed value, $Res Function(CatBreed) then) =
      _$CatBreedCopyWithImpl<$Res>;
  $Res call({String? name, String? description, Map<String, dynamic>? image});
}

/// @nodoc
class _$CatBreedCopyWithImpl<$Res> implements $CatBreedCopyWith<$Res> {
  _$CatBreedCopyWithImpl(this._value, this._then);

  final CatBreed _value;
  // ignore: unused_field
  final $Res Function(CatBreed) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CatBreedCopyWith<$Res> implements $CatBreedCopyWith<$Res> {
  factory _$$_CatBreedCopyWith(
          _$_CatBreed value, $Res Function(_$_CatBreed) then) =
      __$$_CatBreedCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? description, Map<String, dynamic>? image});
}

/// @nodoc
class __$$_CatBreedCopyWithImpl<$Res> extends _$CatBreedCopyWithImpl<$Res>
    implements _$$_CatBreedCopyWith<$Res> {
  __$$_CatBreedCopyWithImpl(
      _$_CatBreed _value, $Res Function(_$_CatBreed) _then)
      : super(_value, (v) => _then(v as _$_CatBreed));

  @override
  _$_CatBreed get _value => super._value as _$_CatBreed;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_CatBreed(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatBreed implements _CatBreed {
  _$_CatBreed({this.name, this.description, final Map<String, dynamic>? image})
      : _image = image;

  factory _$_CatBreed.fromJson(Map<String, dynamic> json) =>
      _$$_CatBreedFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  final Map<String, dynamic>? _image;
  @override
  Map<String, dynamic>? get image {
    final value = _image;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CatBreed(name: $name, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatBreed &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  _$$_CatBreedCopyWith<_$_CatBreed> get copyWith =>
      __$$_CatBreedCopyWithImpl<_$_CatBreed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatBreedToJson(
      this,
    );
  }
}

abstract class _CatBreed implements CatBreed {
  factory _CatBreed(
      {final String? name,
      final String? description,
      final Map<String, dynamic>? image}) = _$_CatBreed;

  factory _CatBreed.fromJson(Map<String, dynamic> json) = _$_CatBreed.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get image;
  @override
  @JsonKey(ignore: true)
  _$$_CatBreedCopyWith<_$_CatBreed> get copyWith =>
      throw _privateConstructorUsedError;
}
