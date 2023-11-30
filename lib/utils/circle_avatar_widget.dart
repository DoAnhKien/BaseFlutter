import 'dart:io';

import 'package:app/themes/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    Key? key,
    this.url = "",
    this.size,
    this.margin,
  }) : super(key: key);
  final String url;
  final double? size;

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    bool isValidUrl = Uri.tryParse(url)?.isAbsolute == true;
    return SizedBox(
      width: size ?? double.infinity,
      height: size ?? double.infinity,
      child: Container(
        width: (size ?? double.infinity) - 10,
        height: (size ?? double.infinity) - 10,
        margin: margin,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular((size ?? 0) / 2),
            boxShadow: [
              BoxShadow(
                color: ThemeProvider.colorShadowBox.withOpacity(1),
                blurRadius: 10,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular((size ?? 0) / 2),
          child: isValidUrl
              ? CachedNetworkImage(
                  imageUrl: url,
                  progressIndicatorBuilder: (context, url, downloadProgress) {
                    return SizedBox(
                      width: size,
                      height: size,
                      child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                        strokeWidth: 2,
                      ),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return const SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Icon(
                        Icons.error_outline,
                        size: 24,
                        color: ThemeProvider.colorErrorText,
                      ),
                    );
                  },
                  fit: BoxFit.fill,
                )
              : SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.file(
                    File(url),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Icon(
                          Icons.error_outline,
                          size: 24,
                          color: ThemeProvider.colorErrorText,
                        ),
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }
}
