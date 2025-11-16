import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';
import 'package:go_router/go_router.dart';

class AppCoordinator {
  final GoRouter _router;

  AppCoordinator(this._router);

  void goBack() {
    if (_router.canPop()) {
      _router.pop();
    }
  }

  void goToGif(GifId gifId) {
    _router.go('/$gifId');
  }
}
