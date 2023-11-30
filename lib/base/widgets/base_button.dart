import 'package:app/themes/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum BaseButtonStyle { fill, outline, delete, textOnly }

class BaseButton extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  final Widget? iconLeadingWidget;
  final double? width;
  final double? height;
  final double? radius;
  final bool isDisable;
  final VoidCallback onPressed;
  final BaseButtonStyle styleButton;
  final Color? backgroundColor;
  final Color? borderColor;

  const BaseButton(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.styleButton,
      this.textStyle,
      this.isDisable = false,
      this.width,
      this.height,
      this.radius,
      this.backgroundColor,
      this.iconLeadingWidget,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    var boxDecoration = const BoxDecoration();
    Color? color = Colors.black;
    var textColor = Colors.black;
    switch (styleButton) {
      case BaseButtonStyle.fill:
        if (!isDisable && backgroundColor == null) {
          boxDecoration = BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ThemeProvider.colorShadowBox.withOpacity(0.12),
                blurRadius: 16,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          );
        }
        color = backgroundColor ??
            (isDisable
                ? ThemeProvider.bgButtonFillDisable
                : ThemeProvider.bgButtonFill);
        textColor = isDisable
            ? ThemeProvider.textColorButtonDisable
            : ThemeProvider.textColorButton;
        break;
      case BaseButtonStyle.outline:
        boxDecoration = BoxDecoration(
          border: Border.all(
              color: borderColor ??
                  (isDisable
                      ? ThemeProvider.borderButtonOutlineDisable
                      : ThemeProvider.borderButtonOutline)),
        );
        color = isDisable
            ? ThemeProvider.bgButtonOutlineDisable
            : ThemeProvider.bgButtonOutline;
        textColor = isDisable
            ? ThemeProvider.textColorButtonOutlineDisable
            : ThemeProvider.textColorButtonOutline;
        break;
      case BaseButtonStyle.delete:
        color = isDisable
            ? ThemeProvider.bgButtonOutlineDisable
            : ThemeProvider.colorErrorText;
        textColor = isDisable
            ? ThemeProvider.textColorButtonOutlineDisable
            : ThemeProvider.colorWhite;
        break;
      case BaseButtonStyle.textOnly:
        color = Colors.transparent;
        textColor = isDisable
            ? ThemeProvider.textColorButtonOutlineDisable
            : (textStyle?.color ?? ThemeProvider.colorBlack);
        break;
    }

    return styleButton != BaseButtonStyle.textOnly
        ? Container(
            width: width ?? double.infinity,
            height: height ?? 44,
            decoration: boxDecoration.copyWith(
                color: backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(radius ?? 0))),
            child: Material(
                color: styleButton != BaseButtonStyle.textOnly
                    ? color
                    : Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
                child: InkWell(
                  onTap: !isDisable
                      ? () {
                          onPressed.call();
                        }
                      : null,
                  child: Center(
                    child: iconLeadingWidget != null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              iconLeadingWidget!,
                              SizedBox(
                                width: 8.w,
                              ),
                              _buildText(textColor)
                            ],
                          )
                        : _buildText(textColor),
                  ),
                )))
        : GestureDetector(
            onTap: !isDisable
                ? () {
                    onPressed.call();
                  }
                : null,
            child: iconLeadingWidget != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      iconLeadingWidget!,
                      SizedBox(
                        width: 8.w,
                      ),
                      _buildText(textColor)
                    ],
                  )
                : _buildText(textColor),
          );
  }

  Text _buildText(Color textColor) {
    return Text(
      title,
      style: textStyle ??
          TextStyle(
              fontFamily: ThemeProvider.fontSemiBold,
              fontSize: ThemeProvider.fontSize16,
              color: textColor),
    );
  }
}
