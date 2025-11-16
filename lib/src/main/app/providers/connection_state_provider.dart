import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void _handleData(List<ConnectivityResult> data, EventSink sink) {
  final connected = !data.contains(ConnectivityResult.none);
  sink.add(connected);
}

final connectionStateProvider = StreamProvider<bool>((ref) {
  final connectivityResultTransformer =
      StreamTransformer<List<ConnectivityResult>, bool>.fromHandlers(
        handleData: _handleData,
      );

  return Connectivity().onConnectivityChanged
      .transform(connectivityResultTransformer)
      .distinct();
});
