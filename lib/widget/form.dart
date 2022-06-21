import 'package:flutter/material.dart';

import '../core/design_config.dart';


class TextFieldSimple  extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final TextInputAction keyboardButtonAction;
  final void Function(String) onFieldSubmitted;
  final double width;
  final EdgeInsetsGeometry margin;
  final int maxLines;

  TextFieldSimple (
      {
        required this.title,
        required this.controller,
        required this.width,
        required EdgeInsetsGeometry margin,
        required BorderRadius borderRadius,
        this.maxLines = 1,
        this.keyboardButtonAction = TextInputAction.next,
        this.keyboardType = TextInputType.text,
        required this.focusNode,
        required this.onFieldSubmitted})
      : this.margin = margin ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 4),
      margin: margin,
      child: TextFormField(
        style: const TextStyle(
            color: DesignConfig.textColor,
            fontSize: DesignConfig.textFontSize),
        controller: controller,
        maxLines: maxLines,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.start,
        keyboardType: keyboardType,
        focusNode: focusNode,
        textInputAction: keyboardButtonAction,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          hintMaxLines: maxLines,
          hintText: title,
          hintStyle: const TextStyle(
              color: DesignConfig.textFieldColor,
              fontSize: DesignConfig.textFontSize,
              fontWeight: FontWeight.w500),
          alignLabelWithHint: true,
          filled: true,
          fillColor: Colors.transparent,
        ),
        onFieldSubmitted: onFieldSubmitted,
      ),
    );
  }
}