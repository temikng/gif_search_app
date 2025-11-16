import 'package:gif_search_app/src/main/app/presentation/gif_detail/gif_detail_screen.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/gif_list_screen.dart';
import 'package:go_router/go_router.dart';

final routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const GifListScreen(),
      routes: [
        GoRoute(
          path: ':id',
          builder: (context, state) {
            final gifId = state.pathParameters['id']!;

            return GifDetailScreen(gifId: gifId);
          },
        ),
      ],
    ),
  ],
);
