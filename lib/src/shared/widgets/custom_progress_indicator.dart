import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomProgressIndicator extends StatelessWidget {
  double size;

  CustomProgressIndicator({super.key, this.size = 50.0});

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(color: Colors.blueGrey, size: size);
  }
}
