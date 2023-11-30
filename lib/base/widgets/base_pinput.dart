import 'package:app/themes/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class BasePinPutOTP extends StatefulWidget {
  final Function(String)? onCompleted;
  final TextEditingController? textEditingController;
  const BasePinPutOTP({Key? key, this.onCompleted, this.textEditingController})
      : super(key: key);

  @override
  BasePinPutOTPState createState() => BasePinPutOTPState();
}

class BasePinPutOTPState extends State<BasePinPutOTP> {
  final focusNode = FocusNode();

  @override
  void dispose() {
    widget.textEditingController?.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(30, 60, 87, 1);

    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle: TextStyle(
        fontSize: ThemeProvider.fontSize18,
        fontFamily: ThemeProvider.fontMedium,
        color: ThemeProvider.colorBlack,
      ),
      decoration: const BoxDecoration(),
    );

    final cursor = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
    final preFilledWidget = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
            color: ThemeProvider.colorPrimary.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );

    return Pinput(
      length: 6,
      autofocus: true,
      pinAnimationType: PinAnimationType.slide,
      controller: widget.textEditingController,
      focusNode: focusNode,
      defaultPinTheme: defaultPinTheme,
      showCursor: true,
      cursor: cursor,
      preFilledWidget: preFilledWidget,
      onCompleted: widget.onCompleted,
    );
  }
}
