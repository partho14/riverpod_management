import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_management/core/app_colors.dart';
import 'package:riverpod_management/core/assets_path.dart';
import 'package:riverpod_management/features/dashboard/presentation/ui/widget/dashboard_item.dart';
import 'package:riverpod_management/features/login/presentation/ui/widget/custom_button.dart';
import 'package:riverpod_management/features/login/presentation/ui/widget/custom_text.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      body: SafeArea(
          child: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async {},
            child: SingleChildScrollView(
                child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    MediaQuery.of(context).size.height, // Full screen height
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 54,
                  ),
                  SizedBox(
                    height: 104,
                    width: 175,
                    child: Image.asset(AssetsPaths.appLogo),
                  ),
                  SizedBox(
                    height: 49,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 200,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        CustomText(
                            title: "Dashboard",
                            color: AppColors.blackColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                        SizedBox(
                          height: 28,
                        ),
                        Row(
                          children: [
                            DashboardItem(
                              title: "Order",
                              icon: AssetsPaths.orderIcon,
                              flex: 1,
                              callBack: () {},
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            DashboardItem(
                                title: "Order List",
                                icon: AssetsPaths.orderListIcon,
                                flex: 2,
                                callBack: () {})
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            DashboardItem(
                              title: "Sales",
                              icon: AssetsPaths.salesIcon,
                              flex: 1,
                              callBack: () async {},
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            DashboardItem(
                              title: "Sales Projection",
                              icon: AssetsPaths.salesProjectionIcon,
                              flex: 1,
                              callBack: () async {},
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            DashboardItem(
                                title: "Projection List",
                                icon: AssetsPaths.orderListIcon,
                                flex: 1,
                                callBack: () async {})
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            DashboardItem(
                                title: "Visit",
                                icon: AssetsPaths.visitIcon,
                                flex: 1,
                                callBack: () {}),
                            SizedBox(
                              width: 15,
                            ),
                            DashboardItem(
                              title: "Complain",
                              icon: AssetsPaths.complainIcon,
                              flex: 1,
                              callBack: () {},
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            DashboardItem(
                                title: "Complain List",
                                icon: AssetsPaths.complainList,
                                flex: 1,
                                callBack: () async {}),
                          ],
                        ),
                        SizedBox(
                          height: 37,
                        ),
                        CustomButton(
                            callBack: () async {},
                            height: 59,
                            width: double.infinity,
                            backgroundColor: AppColors.logoutColor,
                            title: "Logout",
                            titleColor: AppColors.secondaryBlackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            borderRadius: 8,
                            isPrefixIconAvailable: true,
                            prefixIconWidth: 20,
                            prefixIconHeight: 20,
                            icon: AssetsPaths.logoutIcon,
                            isSuffixIconAvailable: false),
                        SizedBox(
                          height: 37,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ),
        ],
      )),
    );
  }
}
