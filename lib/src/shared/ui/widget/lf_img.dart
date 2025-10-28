import 'package:flutter/material.dart';

class ImgWidget extends StatelessWidget {
  final String name;
  final double? size;
  final String? type;
  const ImgWidget({
    required this.name,
    this.size,
    super.key,
    this.type = 'png',
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      key: Key('svg_$name'),
      'assets/images/$name.$type',
      height: size,
      width: size,
    );
  }
}
