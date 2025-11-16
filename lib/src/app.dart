import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/shared/global_keys/scaffold_messenger_key.dart';
import 'package:gif_search_app/src/main/app/providers/connection_state_provider.dart';
import 'package:gif_search_app/src/navigation/app_coordinator.dart';
import 'package:gif_search_app/src/main/app/providers/app_coordinator_provider.dart';
import 'package:gif_search_app/src/navigation/router.dart';
import 'package:gif_search_app/src/shared/themes/dark_theme.dart';
import 'package:gif_search_app/src/shared/themes/light_theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  void _listenConnectionState(_, AsyncValue<bool> next) {
    next.when(
      data: (connected) {
        if (!connected) {
          scaffoldMessengerState.currentState?.showSnackBar(
            SnackBar(content: const Text('No connection')),
          );
        }
      },
      loading: () {},
      error: (error, stack) {
        debugPrint(error.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(connectionStateProvider, _listenConnectionState);

    return ProviderScope(
      overrides: [
        appCoordinatorProvider.overrideWithValue(AppCoordinator(routerConfig)),
      ],
      child: MaterialApp.router(
        scaffoldMessengerKey: scaffoldMessengerState,
        title: 'Gif Search App',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        routerConfig: routerConfig,
      ),
    );
  }
}
