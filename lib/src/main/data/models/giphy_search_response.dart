import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gif_search_app/src/main/data/models/gif.dart';

part 'giphy_search_response.freezed.dart';
part 'giphy_search_response.g.dart';

@freezed
abstract class GiphySearchResponse with _$GiphySearchResponse {
  const factory GiphySearchResponse({
    required List<GifDTO> data,
    required GiphySearchResponsePagination pagination,
  }) = _GiphySearchResponse;

  factory GiphySearchResponse.fromJson(Map<String, dynamic> json) =>
      _$GiphySearchResponseFromJson(json);
}

@freezed
abstract class GiphySearchResponsePagination
    with _$GiphySearchResponsePagination {
  const factory GiphySearchResponsePagination({
    @JsonKey(name: 'total_count') required int totalCount,
    required int count,
    required int offset,
  }) = _GiphySearchResponsePagination;

  factory GiphySearchResponsePagination.fromJson(Map<String, dynamic> json) =>
      _$GiphySearchResponsePaginationFromJson(json);
}
