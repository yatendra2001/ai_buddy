import 'package:flutter/material.dart';
import 'package:ai_buddy/core/ui/widget/url_image.dart';

class UserImage extends StatelessWidget {
  const UserImage.small(this.url, {super.key}) : size = 32;

  const UserImage.medium(this.url, {super.key}) : size = 48;

  const UserImage.large(this.url, {super.key}) : size = 64;

  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    return UrlImage.circle(
      url: url,
      size: size,
    );
  }
}
