import 'package:app/themes/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String? Function(String?)? validator;
  final bool isPassword;
  final bool autoFocus;
  final TextInputType inputType;
  final List<TextInputFormatter>? inputFormatters;

  const BaseTextField(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      this.isPassword = false,
      this.autoFocus = false,
      this.inputType = TextInputType.text,
      this.validator,
      this.inputFormatters});

  @override
  State<BaseTextField> createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends State<BaseTextField> {
  bool passwordToggle = true;

  @override
  void initState() {
    passwordToggle = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autoFocus,
      controller: widget.textEditingController,
      keyboardType: widget.inputType,
      validator: widget.validator,
      obscureText: passwordToggle,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
              fontSize: ThemeProvider.fontSize14,
              fontFamily: ThemeProvider.fontRegular,
              color: ThemeProvider.colorHintText),
          errorStyle: TextStyle(
              fontSize: ThemeProvider.fontSize12,
              fontFamily: ThemeProvider.fontRegular,
              color: ThemeProvider.colorErrorText),
          suffix: widget.isPassword
              ? InkWell(
                  onTap: () {
                    setState(() {
                      passwordToggle = !passwordToggle;
                    });
                  },
                  child: Icon(
                    passwordToggle ? Icons.visibility : Icons.visibility_off,
                    size: 20,
                  ),
                )
              : const SizedBox()),
    );
  }
}
