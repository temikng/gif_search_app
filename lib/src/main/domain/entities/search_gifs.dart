import 'package:gif_search_app/src/main/domain/entities/gif.dart';

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
  final List<Gif> items;
  final bool hasNextPage;
  final int pageNum;

  const SearchGifsResponse({
    required this.items,
    required this.hasNextPage,
    required this.pageNum,
  });

  SearchGifsResponse copyWith({
    List<Gif>? items,
    bool? hasNextPage,
    int? pageNum,
  }) {
    return SearchGifsResponse(
      items: items ?? this.items,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      pageNum: pageNum ?? this.pageNum,
    );
  }
}
