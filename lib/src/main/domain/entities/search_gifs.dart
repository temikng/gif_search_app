import 'package:gif_search_app/src/main/domain/entities/preview_gif.dart';

class SearchGifsParams {
  final String query;
  final int pageNum;
  final int itemsByPage;

  const SearchGifsParams({
    required this.query,
    required this.pageNum,
    required this.itemsByPage,
  });

  SearchGifsParams copyWith({String? query, int? pageNum, int? itemsByPage}) =>
      SearchGifsParams(
        query: query ?? this.query,
        pageNum: pageNum ?? this.pageNum,
        itemsByPage: itemsByPage ?? this.itemsByPage,
      );

  @override
  String toString() {
    return "SearchGifsParams{query:$query,pageNum:$pageNum,itemsByPage:$itemsByPage}";
  }
}

class SearchGifsResponse {
  final List<PreviewGif> items;
  final bool hasNextPage;
  final int pageNum;

  const SearchGifsResponse({
    required this.items,
    required this.hasNextPage,
    required this.pageNum,
  });
}
