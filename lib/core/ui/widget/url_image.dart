import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum UrlImageShape {
  circle,
  rectangle,
}

class UrlImage extends StatelessWidget {
  const UrlImage({
    required this.url,
    required this.width,
    required this.height,
    this.fit = BoxFit.cover,
    super.key,
  }) : shape = UrlImageShape.rectangle;

  const UrlImage.square({
    required this.url,
    required double size,
    this.fit = BoxFit.cover,
    super.key,
  })  : width = size,
        height = size,
        shape = UrlImageShape.rectangle;

  const UrlImage.circle({
    required this.url,
    required double size,
    this.fit = BoxFit.cover,
    super.key,
  })  : width = size,
        height = size,
        shape = UrlImageShape.circle;

  final String url;
  final double width;
  final double height;
  final UrlImageShape shape;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final Widget image = CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
    );

    return switch (shape) {
      UrlImageShape.circle => ClipOval(child: image),
      UrlImageShape.rectangle => image,
    };
  }
}
