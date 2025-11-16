// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giphy_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GiphySearchResponse _$GiphySearchResponseFromJson(Map<String, dynamic> json) =>
    _GiphySearchResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => GifDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: GiphySearchResponsePagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$GiphySearchResponseToJson(
  _GiphySearchResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'pagination': instance.pagination,
};

_GiphySearchResponsePagination _$GiphySearchResponsePaginationFromJson(
  Map<String, dynamic> json,
) => _GiphySearchResponsePagination(
  totalCount: (json['total_count'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  offset: (json['offset'] as num).toInt(),
);

Map<String, dynamic> _$GiphySearchResponsePaginationToJson(
  _GiphySearchResponsePagination instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'count': instance.count,
  'offset': instance.offset,
};
