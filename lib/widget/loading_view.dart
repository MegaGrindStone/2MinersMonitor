import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key, this.width, this.height}) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? 15,
        height: height ?? 15,
        child: const CircularProgressIndicator(
          strokeWidth: 2,
        ),
      ),
    );
  }
}
