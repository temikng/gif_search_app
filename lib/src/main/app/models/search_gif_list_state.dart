import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gif_search_app/src/main/domain/entities/gif.dart';

part 'search_gif_list_state.freezed.dart';

@freezed
abstract class SearchGifListState with _$SearchGifListState {
  const factory SearchGifListState({
    @Default([]) List<Gif> items,
    @Default(true) bool hasNextPage,
    @Default(false) bool isLoadingMore,
    @Default(null) Object? error,
  }) = _SearchGifListState;
}
