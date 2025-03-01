import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

import '../utils/assets_path.dart' show AssetsPath;

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AssetsPath.backgroundSvg,
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          /*height: double.maxFinite,*/
          width: double.maxFinite,
        ),
        SafeArea(child: child),
      ],
    );
  }
}
