import 'package:ecommerce_demo_flutter/app/components/custom_text_field.dart';
import 'package:ecommerce_demo_flutter/app/components/login_top_shape.dart';
import 'package:ecommerce_demo_flutter/app/components/primary_button.dart';
import 'package:ecommerce_demo_flutter/app/config/app_assets.dart';
import 'package:ecommerce_demo_flutter/app/config/app_themes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              LoginTopBar(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.ASSET_APP_REMARK_LOGO,
                      height: 96,
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'You can buy anything from here.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 80),
                    const CustomTextField(
                        label: 'Email', validationText: 'Enter your email'),
                    const SizedBox(height: 10),
                    const CustomTextField(
                        label: 'Password',
                        validationText: 'Enter your Password'),
                    const SizedBox(height: 20),
                    PrimaryButton(
                      onClick: () {
                        controller.onTapLogin();
                      },
                      text: 'LOGIN',
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Dont have an account?',
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          ' Create Account',
                          style: TextStyle(
                              fontSize: 16, color: AppThemes.PrimaryDarkColor),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
