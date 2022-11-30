import 'package:ecommerce_demo_flutter/app/components/custom_text_field.dart';
import 'package:ecommerce_demo_flutter/app/components/primary_button.dart';
import 'package:ecommerce_demo_flutter/app/config/app_assets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.ASSET_APP_LOGO,
              height: 80,
            ),
            const SizedBox(height: 10),
            const Text(
              'You can buy anything from here.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            const CustomTextField(
                label: 'Email', validationText: 'Enter your email'),
            const SizedBox(height: 10),
            const CustomTextField(
                label: 'Password', validationText: 'Enter your Password'),
            const SizedBox(height: 20),
            PrimaryButton(
              onClick: () {},
              text: 'LOGIN',
            )
          ],
        ),
      ),
    ));
  }
}
