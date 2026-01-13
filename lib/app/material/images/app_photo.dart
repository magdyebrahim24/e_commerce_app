import 'package:flutter/material.dart';

    /// TODO : MAKE THIS WIDGET 
    /// Accept path and build image according its path type
    /// Network , Asset , File
    /// Also add ablity as bool variable name [canCache] that use [CachedNetworkImage] package
class AppPhoto extends StatelessWidget {

    /// TODO : rename widget to be more meaningful 
  /// like : AppImageWidget
  const AppPhoto({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.fit,
    this.scale,
  });
  final String path;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? scale;
  @override
  Widget build(BuildContext context) {

    return Image.asset(
      path,
      height: height,
      width: width,
      fit: fit,
      scale: scale,
    );
  }
}
