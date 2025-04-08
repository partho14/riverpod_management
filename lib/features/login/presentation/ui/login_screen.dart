import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_management/core/app_colors.dart';
import 'package:riverpod_management/core/assets_path.dart';
import 'package:riverpod_management/features/login/presentation/ui/widget/custom_button.dart';
import 'package:riverpod_management/features/login/presentation/ui/widget/custom_text.dart';
import 'package:riverpod_management/features/login/presentation/ui/widget/custom_text_field.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      body: SafeArea(
          child: SingleChildScrollView(
              child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height, // Full screen height
        ),
        child: Stack(
          children: [
            Column(
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
                  height: MediaQuery.of(context).size.height - 207,
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
                        height: 20,
                      ),
                      CustomText(
                          title: "Login",
                          color: AppColors.blackColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                      SizedBox(
                        height: 26,
                      ),
                      SizedBox(
                        height: 208,
                        width: 208,
                        child: Image.asset(
                          AssetsPaths.loginImage,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CustomTextField(
                        controller: emailController,
                        label: "Email",
                        onChange: (val) {},
                        hintText: "Enter Your Email",
                        obscureText: false,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      CustomTextField(
                        controller: passwordController,
                        label: "Password",
                        onChange: (val) {},
                        hintText: "Enter Password",
                        obscureText: true,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      CustomButton(
                        callBack: () {
                          context.push('/dashboard');
                        },
                        height: 61,
                        width: double.infinity,
                        backgroundColor: emailController.text.isNotEmpty &&
                                passwordController.text.isNotEmpty
                            ? AppColors.primaryButtonColor
                            : AppColors.inputFieldBorder,
                        title: "Login",
                        titleColor: AppColors.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        borderRadius: 8,
                        isSuffixIconAvailable: false,
                        isPrefixIconAvailable: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ))),
    );
  }
}
