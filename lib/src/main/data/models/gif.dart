import 'package:freezed_annotation/freezed_annotation.dart';

part 'gif.freezed.dart';
part 'gif.g.dart';

@freezed
abstract class GifDTO with _$GifDTO {
  const factory GifDTO({
    required String id,
    required String title,
    @JsonKey(readValue: _readGifUrl) @GifDTOUrlConverter() required String url,
    @JsonKey(readValue: _readGifUrl)
    @GifDTOPreviewUrlConverter()
    String? previewUrl,
  }) = _GifDTO;

  factory GifDTO.fromJson(Map<String, dynamic> json) => _$GifDTOFromJson(json);
}

class GifDTOUrlConverter
    implements JsonConverter<String, Map<String, dynamic>> {
  const GifDTOUrlConverter();

  @override
  String fromJson(Map<String, dynamic> json) {
    final url = json['images']['original']?['url'];

    if (url != null && url is String) {
      return url;
    }

    return json['url'];
  }

  @override
  Map<String, dynamic> toJson(String? value) => {};
}

class GifDTOPreviewUrlConverter
    implements JsonConverter<String?, Map<String, dynamic>> {
  const GifDTOPreviewUrlConverter();

  @override
  String? fromJson(Map<String, dynamic> json) {
    final url = json['images']['preview_gif']?['url'];

    if (url != null && url is String) {
      return url;
    }

    return null;
  }

  @override
  Map<String, dynamic> toJson(String? value) => {};
}

Object? _readGifUrl(Map<dynamic, dynamic> json, String key) => json;
