// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_gif_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchGifListState {

 List<Gif> get items; bool get hasNextPage; bool get isLoadingMore; Object? get error;
/// Create a copy of SearchGifListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchGifListStateCopyWith<SearchGifListState> get copyWith => _$SearchGifListStateCopyWithImpl<SearchGifListState>(this as SearchGifListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchGifListState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),hasNextPage,isLoadingMore,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'SearchGifListState(items: $items, hasNextPage: $hasNextPage, isLoadingMore: $isLoadingMore, error: $error)';
}


}

/// @nodoc
abstract mixin class $SearchGifListStateCopyWith<$Res>  {
  factory $SearchGifListStateCopyWith(SearchGifListState value, $Res Function(SearchGifListState) _then) = _$SearchGifListStateCopyWithImpl;
@useResult
$Res call({
 List<Gif> items, bool hasNextPage, bool isLoadingMore, Object? error
});




}
/// @nodoc
class _$SearchGifListStateCopyWithImpl<$Res>
    implements $SearchGifListStateCopyWith<$Res> {
  _$SearchGifListStateCopyWithImpl(this._self, this._then);

  final SearchGifListState _self;
  final $Res Function(SearchGifListState) _then;

/// Create a copy of SearchGifListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? hasNextPage = null,Object? isLoadingMore = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Gif>,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchGifListState].
extension SearchGifListStatePatterns on SearchGifListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchGifListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchGifListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchGifListState value)  $default,){
final _that = this;
switch (_that) {
case _SearchGifListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchGifListState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchGifListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Gif> items,  bool hasNextPage,  bool isLoadingMore,  Object? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchGifListState() when $default != null:
return $default(_that.items,_that.hasNextPage,_that.isLoadingMore,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Gif> items,  bool hasNextPage,  bool isLoadingMore,  Object? error)  $default,) {final _that = this;
switch (_that) {
case _SearchGifListState():
return $default(_that.items,_that.hasNextPage,_that.isLoadingMore,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Gif> items,  bool hasNextPage,  bool isLoadingMore,  Object? error)?  $default,) {final _that = this;
switch (_that) {
case _SearchGifListState() when $default != null:
return $default(_that.items,_that.hasNextPage,_that.isLoadingMore,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _SearchGifListState implements SearchGifListState {
  const _SearchGifListState({final  List<Gif> items = const [], this.hasNextPage = true, this.isLoadingMore = false, this.error = null}): _items = items;
  

 final  List<Gif> _items;
@override@JsonKey() List<Gif> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool hasNextPage;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  Object? error;

/// Create a copy of SearchGifListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchGifListStateCopyWith<_SearchGifListState> get copyWith => __$SearchGifListStateCopyWithImpl<_SearchGifListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchGifListState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),hasNextPage,isLoadingMore,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'SearchGifListState(items: $items, hasNextPage: $hasNextPage, isLoadingMore: $isLoadingMore, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SearchGifListStateCopyWith<$Res> implements $SearchGifListStateCopyWith<$Res> {
  factory _$SearchGifListStateCopyWith(_SearchGifListState value, $Res Function(_SearchGifListState) _then) = __$SearchGifListStateCopyWithImpl;
@override @useResult
$Res call({
 List<Gif> items, bool hasNextPage, bool isLoadingMore, Object? error
});




}
/// @nodoc
class __$SearchGifListStateCopyWithImpl<$Res>
    implements _$SearchGifListStateCopyWith<$Res> {
  __$SearchGifListStateCopyWithImpl(this._self, this._then);

  final _SearchGifListState _self;
  final $Res Function(_SearchGifListState) _then;

/// Create a copy of SearchGifListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? hasNextPage = null,Object? isLoadingMore = null,Object? error = freezed,}) {
  return _then(_SearchGifListState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Gif>,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}


}

// dart format on
