import 'package:app/themes/themes_provider.dart';
import 'package:flutter/material.dart';

class IconCircleWidget extends StatelessWidget {
  final Widget child;
  final BoxDecoration? decoration;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  const IconCircleWidget(
      {super.key,
      required this.child,
      this.decoration,
      this.padding,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      padding: padding,
      decoration: decoration ??
          BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor ??
                ThemeProvider.colorStatusBar.withOpacity(0.1),
          ),
      child: Center(child: child),
    );
  }
}
