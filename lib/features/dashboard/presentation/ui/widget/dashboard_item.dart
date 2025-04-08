import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:riverpod_management/core/app_colors.dart';
import 'package:riverpod_management/features/login/presentation/ui/widget/custom_text.dart';

class DashboardItem extends StatelessWidget {
  DashboardItem(
      {required this.title,
      required this.icon,
      required this.flex,
      required this.callBack,
      super.key});

  String title;
  String icon;
  int flex;
  Function callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: InkWell(
        onTap: () {
          callBack();
        },
        child: Container(
          padding: EdgeInsets.all(15),
          height: 126,
          decoration: BoxDecoration(
            color: AppColors.secondaryBlackColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: SvgPicture.asset(
                  icon,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                title: title,
                color: AppColors.yellowTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
