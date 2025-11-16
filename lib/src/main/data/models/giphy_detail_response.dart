import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gif_search_app/src/main/data/models/gif.dart';

part 'giphy_detail_response.freezed.dart';
part 'giphy_detail_response.g.dart';

@freezed
abstract class GiphyDetailResponse with _$GiphyDetailResponse {
  const factory GiphyDetailResponse({required GifDTO data}) =
      _GiphyDetailResponse;

  factory GiphyDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$GiphyDetailResponseFromJson(json);
}
