// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gif.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GifDTO {

 String get id; String get title;@JsonKey(readValue: _readGifUrl)@GifDTOUrlConverter() String get url;@JsonKey(readValue: _readGifUrl)@GifDTOPreviewUrlConverter() String? get previewUrl;
/// Create a copy of GifDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GifDTOCopyWith<GifDTO> get copyWith => _$GifDTOCopyWithImpl<GifDTO>(this as GifDTO, _$identity);

  /// Serializes this GifDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GifDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,url,previewUrl);

@override
String toString() {
  return 'GifDTO(id: $id, title: $title, url: $url, previewUrl: $previewUrl)';
}


}

/// @nodoc
abstract mixin class $GifDTOCopyWith<$Res>  {
  factory $GifDTOCopyWith(GifDTO value, $Res Function(GifDTO) _then) = _$GifDTOCopyWithImpl;
@useResult
$Res call({
 String id, String title,@JsonKey(readValue: _readGifUrl)@GifDTOUrlConverter() String url,@JsonKey(readValue: _readGifUrl)@GifDTOPreviewUrlConverter() String? previewUrl
});




}
/// @nodoc
class _$GifDTOCopyWithImpl<$Res>
    implements $GifDTOCopyWith<$Res> {
  _$GifDTOCopyWithImpl(this._self, this._then);

  final GifDTO _self;
  final $Res Function(GifDTO) _then;

/// Create a copy of GifDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? url = null,Object? previewUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,previewUrl: freezed == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GifDTO].
extension GifDTOPatterns on GifDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GifDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GifDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GifDTO value)  $default,){
final _that = this;
switch (_that) {
case _GifDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GifDTO value)?  $default,){
final _that = this;
switch (_that) {
case _GifDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(readValue: _readGifUrl)@GifDTOUrlConverter()  String url, @JsonKey(readValue: _readGifUrl)@GifDTOPreviewUrlConverter()  String? previewUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GifDTO() when $default != null:
return $default(_that.id,_that.title,_that.url,_that.previewUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(readValue: _readGifUrl)@GifDTOUrlConverter()  String url, @JsonKey(readValue: _readGifUrl)@GifDTOPreviewUrlConverter()  String? previewUrl)  $default,) {final _that = this;
switch (_that) {
case _GifDTO():
return $default(_that.id,_that.title,_that.url,_that.previewUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title, @JsonKey(readValue: _readGifUrl)@GifDTOUrlConverter()  String url, @JsonKey(readValue: _readGifUrl)@GifDTOPreviewUrlConverter()  String? previewUrl)?  $default,) {final _that = this;
switch (_that) {
case _GifDTO() when $default != null:
return $default(_that.id,_that.title,_that.url,_that.previewUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GifDTO implements GifDTO {
  const _GifDTO({required this.id, required this.title, @JsonKey(readValue: _readGifUrl)@GifDTOUrlConverter() required this.url, @JsonKey(readValue: _readGifUrl)@GifDTOPreviewUrlConverter() this.previewUrl});
  factory _GifDTO.fromJson(Map<String, dynamic> json) => _$GifDTOFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey(readValue: _readGifUrl)@GifDTOUrlConverter() final  String url;
@override@JsonKey(readValue: _readGifUrl)@GifDTOPreviewUrlConverter() final  String? previewUrl;

/// Create a copy of GifDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GifDTOCopyWith<_GifDTO> get copyWith => __$GifDTOCopyWithImpl<_GifDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GifDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GifDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,url,previewUrl);

@override
String toString() {
  return 'GifDTO(id: $id, title: $title, url: $url, previewUrl: $previewUrl)';
}


}

/// @nodoc
abstract mixin class _$GifDTOCopyWith<$Res> implements $GifDTOCopyWith<$Res> {
  factory _$GifDTOCopyWith(_GifDTO value, $Res Function(_GifDTO) _then) = __$GifDTOCopyWithImpl;
@override @useResult
$Res call({
 String id, String title,@JsonKey(readValue: _readGifUrl)@GifDTOUrlConverter() String url,@JsonKey(readValue: _readGifUrl)@GifDTOPreviewUrlConverter() String? previewUrl
});




}
/// @nodoc
class __$GifDTOCopyWithImpl<$Res>
    implements _$GifDTOCopyWith<$Res> {
  __$GifDTOCopyWithImpl(this._self, this._then);

  final _GifDTO _self;
  final $Res Function(_GifDTO) _then;

/// Create a copy of GifDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? url = null,Object? previewUrl = freezed,}) {
  return _then(_GifDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,previewUrl: freezed == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
