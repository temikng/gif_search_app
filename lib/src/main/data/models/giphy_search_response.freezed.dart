// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giphy_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GiphySearchResponse {

 List<GifDTO> get data; GiphySearchResponsePagination get pagination;
/// Create a copy of GiphySearchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GiphySearchResponseCopyWith<GiphySearchResponse> get copyWith => _$GiphySearchResponseCopyWithImpl<GiphySearchResponse>(this as GiphySearchResponse, _$identity);

  /// Serializes this GiphySearchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiphySearchResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'GiphySearchResponse(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $GiphySearchResponseCopyWith<$Res>  {
  factory $GiphySearchResponseCopyWith(GiphySearchResponse value, $Res Function(GiphySearchResponse) _then) = _$GiphySearchResponseCopyWithImpl;
@useResult
$Res call({
 List<GifDTO> data, GiphySearchResponsePagination pagination
});


$GiphySearchResponsePaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$GiphySearchResponseCopyWithImpl<$Res>
    implements $GiphySearchResponseCopyWith<$Res> {
  _$GiphySearchResponseCopyWithImpl(this._self, this._then);

  final GiphySearchResponse _self;
  final $Res Function(GiphySearchResponse) _then;

/// Create a copy of GiphySearchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<GifDTO>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as GiphySearchResponsePagination,
  ));
}
/// Create a copy of GiphySearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GiphySearchResponsePaginationCopyWith<$Res> get pagination {
  
  return $GiphySearchResponsePaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [GiphySearchResponse].
extension GiphySearchResponsePatterns on GiphySearchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GiphySearchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GiphySearchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GiphySearchResponse value)  $default,){
final _that = this;
switch (_that) {
case _GiphySearchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GiphySearchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GiphySearchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GifDTO> data,  GiphySearchResponsePagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GiphySearchResponse() when $default != null:
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GifDTO> data,  GiphySearchResponsePagination pagination)  $default,) {final _that = this;
switch (_that) {
case _GiphySearchResponse():
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GifDTO> data,  GiphySearchResponsePagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _GiphySearchResponse() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GiphySearchResponse implements GiphySearchResponse {
  const _GiphySearchResponse({required final  List<GifDTO> data, required this.pagination}): _data = data;
  factory _GiphySearchResponse.fromJson(Map<String, dynamic> json) => _$GiphySearchResponseFromJson(json);

 final  List<GifDTO> _data;
@override List<GifDTO> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  GiphySearchResponsePagination pagination;

/// Create a copy of GiphySearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GiphySearchResponseCopyWith<_GiphySearchResponse> get copyWith => __$GiphySearchResponseCopyWithImpl<_GiphySearchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GiphySearchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GiphySearchResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'GiphySearchResponse(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$GiphySearchResponseCopyWith<$Res> implements $GiphySearchResponseCopyWith<$Res> {
  factory _$GiphySearchResponseCopyWith(_GiphySearchResponse value, $Res Function(_GiphySearchResponse) _then) = __$GiphySearchResponseCopyWithImpl;
@override @useResult
$Res call({
 List<GifDTO> data, GiphySearchResponsePagination pagination
});


@override $GiphySearchResponsePaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$GiphySearchResponseCopyWithImpl<$Res>
    implements _$GiphySearchResponseCopyWith<$Res> {
  __$GiphySearchResponseCopyWithImpl(this._self, this._then);

  final _GiphySearchResponse _self;
  final $Res Function(_GiphySearchResponse) _then;

/// Create a copy of GiphySearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_GiphySearchResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<GifDTO>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as GiphySearchResponsePagination,
  ));
}

/// Create a copy of GiphySearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GiphySearchResponsePaginationCopyWith<$Res> get pagination {
  
  return $GiphySearchResponsePaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$GiphySearchResponsePagination {

@JsonKey(name: 'total_count') int get totalCount; int get count; int get offset;
/// Create a copy of GiphySearchResponsePagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GiphySearchResponsePaginationCopyWith<GiphySearchResponsePagination> get copyWith => _$GiphySearchResponsePaginationCopyWithImpl<GiphySearchResponsePagination>(this as GiphySearchResponsePagination, _$identity);

  /// Serializes this GiphySearchResponsePagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiphySearchResponsePagination&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.count, count) || other.count == count)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,count,offset);

@override
String toString() {
  return 'GiphySearchResponsePagination(totalCount: $totalCount, count: $count, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $GiphySearchResponsePaginationCopyWith<$Res>  {
  factory $GiphySearchResponsePaginationCopyWith(GiphySearchResponsePagination value, $Res Function(GiphySearchResponsePagination) _then) = _$GiphySearchResponsePaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_count') int totalCount, int count, int offset
});




}
/// @nodoc
class _$GiphySearchResponsePaginationCopyWithImpl<$Res>
    implements $GiphySearchResponsePaginationCopyWith<$Res> {
  _$GiphySearchResponsePaginationCopyWithImpl(this._self, this._then);

  final GiphySearchResponsePagination _self;
  final $Res Function(GiphySearchResponsePagination) _then;

/// Create a copy of GiphySearchResponsePagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? count = null,Object? offset = null,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GiphySearchResponsePagination].
extension GiphySearchResponsePaginationPatterns on GiphySearchResponsePagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GiphySearchResponsePagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GiphySearchResponsePagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GiphySearchResponsePagination value)  $default,){
final _that = this;
switch (_that) {
case _GiphySearchResponsePagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GiphySearchResponsePagination value)?  $default,){
final _that = this;
switch (_that) {
case _GiphySearchResponsePagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int totalCount,  int count,  int offset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GiphySearchResponsePagination() when $default != null:
return $default(_that.totalCount,_that.count,_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int totalCount,  int count,  int offset)  $default,) {final _that = this;
switch (_that) {
case _GiphySearchResponsePagination():
return $default(_that.totalCount,_that.count,_that.offset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_count')  int totalCount,  int count,  int offset)?  $default,) {final _that = this;
switch (_that) {
case _GiphySearchResponsePagination() when $default != null:
return $default(_that.totalCount,_that.count,_that.offset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GiphySearchResponsePagination implements GiphySearchResponsePagination {
  const _GiphySearchResponsePagination({@JsonKey(name: 'total_count') required this.totalCount, required this.count, required this.offset});
  factory _GiphySearchResponsePagination.fromJson(Map<String, dynamic> json) => _$GiphySearchResponsePaginationFromJson(json);

@override@JsonKey(name: 'total_count') final  int totalCount;
@override final  int count;
@override final  int offset;

/// Create a copy of GiphySearchResponsePagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GiphySearchResponsePaginationCopyWith<_GiphySearchResponsePagination> get copyWith => __$GiphySearchResponsePaginationCopyWithImpl<_GiphySearchResponsePagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GiphySearchResponsePaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GiphySearchResponsePagination&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.count, count) || other.count == count)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,count,offset);

@override
String toString() {
  return 'GiphySearchResponsePagination(totalCount: $totalCount, count: $count, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$GiphySearchResponsePaginationCopyWith<$Res> implements $GiphySearchResponsePaginationCopyWith<$Res> {
  factory _$GiphySearchResponsePaginationCopyWith(_GiphySearchResponsePagination value, $Res Function(_GiphySearchResponsePagination) _then) = __$GiphySearchResponsePaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_count') int totalCount, int count, int offset
});




}
/// @nodoc
class __$GiphySearchResponsePaginationCopyWithImpl<$Res>
    implements _$GiphySearchResponsePaginationCopyWith<$Res> {
  __$GiphySearchResponsePaginationCopyWithImpl(this._self, this._then);

  final _GiphySearchResponsePagination _self;
  final $Res Function(_GiphySearchResponsePagination) _then;

/// Create a copy of GiphySearchResponsePagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? count = null,Object? offset = null,}) {
  return _then(_GiphySearchResponsePagination(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
