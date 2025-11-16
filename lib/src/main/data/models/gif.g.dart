// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GifDTO _$GifDTOFromJson(Map<String, dynamic> json) => _GifDTO(
  id: json['id'] as String,
  title: json['title'] as String,
  url: const GifDTOUrlConverter().fromJson(
    _readGifUrl(json, 'url') as Map<String, dynamic>,
  ),
  previewUrl: _$JsonConverterFromJson<Map<String, dynamic>, String?>(
    _readGifUrl(json, 'previewUrl'),
    const GifDTOPreviewUrlConverter().fromJson,
  ),
);

Map<String, dynamic> _$GifDTOToJson(_GifDTO instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'url': const GifDTOUrlConverter().toJson(instance.url),
  'previewUrl': const GifDTOPreviewUrlConverter().toJson(instance.previewUrl),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);
