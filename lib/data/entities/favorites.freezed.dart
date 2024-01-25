// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Favorites _$FavoritesFromJson(Map<String, dynamic> json) {
  return _Favorites.fromJson(json);
}

/// @nodoc
mixin _$Favorites {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get effect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesCopyWith<Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesCopyWith<$Res> {
  factory $FavoritesCopyWith(Favorites value, $Res Function(Favorites) then) =
      _$FavoritesCopyWithImpl<$Res, Favorites>;
  @useResult
  $Res call({String name, String image, String category, String effect});
}

/// @nodoc
class _$FavoritesCopyWithImpl<$Res, $Val extends Favorites>
    implements $FavoritesCopyWith<$Res> {
  _$FavoritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? category = null,
    Object? effect = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesImplCopyWith<$Res>
    implements $FavoritesCopyWith<$Res> {
  factory _$$FavoritesImplCopyWith(
          _$FavoritesImpl value, $Res Function(_$FavoritesImpl) then) =
      __$$FavoritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image, String category, String effect});
}

/// @nodoc
class __$$FavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesCopyWithImpl<$Res, _$FavoritesImpl>
    implements _$$FavoritesImplCopyWith<$Res> {
  __$$FavoritesImplCopyWithImpl(
      _$FavoritesImpl _value, $Res Function(_$FavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? category = null,
    Object? effect = null,
  }) {
    return _then(_$FavoritesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritesImpl with DiagnosticableTreeMixin implements _Favorites {
  const _$FavoritesImpl(
      {required this.name,
      required this.image,
      required this.category,
      required this.effect});

  factory _$FavoritesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritesImplFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final String category;
  @override
  final String effect;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Favorites(name: $name, image: $image, category: $category, effect: $effect)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Favorites'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('effect', effect));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, category, effect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesImplCopyWith<_$FavoritesImpl> get copyWith =>
      __$$FavoritesImplCopyWithImpl<_$FavoritesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritesImplToJson(
      this,
    );
  }
}

abstract class _Favorites implements Favorites {
  const factory _Favorites(
      {required final String name,
      required final String image,
      required final String category,
      required final String effect}) = _$FavoritesImpl;

  factory _Favorites.fromJson(Map<String, dynamic> json) =
      _$FavoritesImpl.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  String get category;
  @override
  String get effect;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesImplCopyWith<_$FavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
