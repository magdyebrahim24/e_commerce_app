import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

    /// TODO : MAKE THIS WIDGET 
    /// Accept path and build image according its path type
    /// Network , Asset , File
class AppSvgPhoto extends StatelessWidget {

  /// TODO : rename widget to be more meaningful 
  /// like : AppSvgIcon
  const AppSvgPhoto({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.color,
  });
  
  final String path;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      height: height,
      width: width,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}
