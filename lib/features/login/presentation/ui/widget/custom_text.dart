
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {required this.title,
        required this.color,
        required this.fontSize,
        this.overFlow = true,
        required this.fontWeight,
        this.textAlign,
        this.textDecoration = TextDecoration.none,
        this.decorationThickness = 2,
        this.height = 0,
        this.decorationColor,
        this.letterSpacing = 0.5,
        this.maxLines = 10,
        super.key});

  String title;
  Color color;
  double fontSize;
  FontWeight fontWeight;
  TextAlign? textAlign;
  bool? overFlow;
  TextDecoration textDecoration;
  double? decorationThickness;
  double? height;
  Color? decorationColor;
  double? letterSpacing;
  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
        style: TextStyle(
            letterSpacing: letterSpacing,
            decoration: textDecoration,
            decorationColor: decorationColor,
            decorationThickness: decorationThickness,
            height: height,
            overflow: !overFlow! ? TextOverflow.ellipsis : TextOverflow.visible,
            color: color,
            fontSize: fontSize,
            fontFamily: "OpenSans",
            fontWeight: fontWeight));
  }
}
