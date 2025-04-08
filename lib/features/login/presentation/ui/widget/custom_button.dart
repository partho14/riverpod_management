import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:riverpod_management/features/login/presentation/ui/widget/custom_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.callBack,
      required this.height,
      this.width,
      required this.backgroundColor,
      required this.title,
      required this.titleColor,
      required this.fontSize,
      required this.fontWeight,
      this.letterSpacing,
      this.fontFamily,
      required this.borderRadius,
      required this.isPrefixIconAvailable,
      required this.isSuffixIconAvailable,
      this.icon,
      this.prefixIconHeight,
      this.prefixIconWidth,
      this.suffixIconHeight,
      this.suffixIconWidth,
      super.key});

  Function callBack;
  double height;
  double? width;
  Color backgroundColor;
  String title;
  Color titleColor;
  double fontSize;
  FontWeight fontWeight;
  double? letterSpacing;
  String? fontFamily;
  double borderRadius;
  String? icon;
  bool isPrefixIconAvailable;
  double? prefixIconHeight;
  double? prefixIconWidth;
  bool isSuffixIconAvailable;
  double? suffixIconHeight;
  double? suffixIconWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callBack();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: backgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isPrefixIconAvailable == true
                ? isPrefixIconAvailable
                    ? SizedBox(
                        height: prefixIconHeight,
                        width: prefixIconWidth,
                        child: SvgPicture.asset(icon!))
                    : SizedBox()
                : SizedBox(),
            isPrefixIconAvailable == true
                ? isPrefixIconAvailable
                    ? SizedBox(
                        width: 10,
                      )
                    : SizedBox()
                : SizedBox(),
            CustomText(
              title: title,
              color: titleColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              letterSpacing: letterSpacing,
            ),
            isSuffixIconAvailable ? Spacer() : SizedBox(),
            isSuffixIconAvailable == true
                ? isSuffixIconAvailable
                    ? SizedBox(
                        height: suffixIconHeight,
                        width: suffixIconWidth,
                        child: SvgPicture.asset(icon!))
                    : SizedBox()
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
