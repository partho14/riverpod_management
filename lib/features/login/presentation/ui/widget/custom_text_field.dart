import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_management/core/app_colors.dart';
import 'package:riverpod_management/features/login/presentation/ui/widget/custom_text.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.controller,
      required this.label,
      required this.hintText,
      required this.obscureText,
      required this.maxLines,
      required this.onChange,
      this.textInputType,
      this.backgroundColor,
      this.formatter,
      super.key});

  TextEditingController controller;
  Color? backgroundColor = Colors.transparent;
  List<TextInputFormatter>? formatter = [];
  Function(String val) onChange;
  TextInputType? textInputType = TextInputType.text;
  String label;
  String hintText;
  bool obscureText;
  int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: TextField(
        controller: controller,
        cursorColor: AppColors.blackColor,
        cursorWidth: 1.0,
        keyboardType: textInputType,
        textInputAction: TextInputAction.next,
        maxLines: maxLines,
        obscureText: obscureText,
        inputFormatters: formatter,
        onChanged: (val) {
          onChange(val);
        },
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          label: CustomText(
            title: label,
            color: AppColors.blackColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: AppColors.inputFieldHintTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.inputFieldBorder, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: AppColors.secondaryBlackColor, width: 1.5),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }
}
