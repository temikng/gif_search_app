import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/widgets/gif_list_view.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/widgets/custom_search_field.dart';
import 'package:gif_search_app/src/main/app/providers/search_gifs_params_provider.dart';

class GifListScreenBody extends ConsumerStatefulWidget {
  const GifListScreenBody({super.key});

  @override
  ConsumerState<GifListScreenBody> createState() => _GifListScreenBodyState();
}

class _GifListScreenBodyState extends ConsumerState<GifListScreenBody> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    ref.read(debouncedQuerySearchGifsParamsProvider)(
      _searchController.text.trim().toLowerCase(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomSearchField(controller: _searchController),
        ),

        Expanded(child: GifListView()),
      ],
    );
  }
}
