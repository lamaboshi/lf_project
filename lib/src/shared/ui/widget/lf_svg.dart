import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SbSvg extends StatelessWidget {
  final String name;
  final Color? color;
  final double? size;
  final bool withColor;
  const SbSvg({
    required this.name,
    this.color,
    this.size,
    this.withColor = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      key: Key('svg_$name'),
      'assets/svg/$name.svg',
      height: size,
      width: size,
      colorFilter: withColor ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }
}
