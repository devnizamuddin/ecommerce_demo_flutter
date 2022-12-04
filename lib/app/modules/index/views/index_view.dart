import 'package:ecommerce_demo_flutter/app/modules/account/views/account_view.dart';
import 'package:ecommerce_demo_flutter/app/modules/cart/views/cart_view.dart';
import 'package:ecommerce_demo_flutter/app/modules/home/views/home_view.dart';
import 'package:ecommerce_demo_flutter/app/modules/services/views/services_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../config/app_themes.dart';
import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppThemes.PrimaryColor,
              unselectedItemColor: Colors.grey[400],
              selectedItemColor: Colors.white,
              showUnselectedLabels: true,
              currentIndex: controller.currentIndex.value,
              onTap: (value) {
                controller.currentIndex.value = value;
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.apps,
                    ),
                    label: 'Services'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_bag,
                    ),
                    label: 'Activity'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_box,
                    ),
                    label: 'Account'),
              ],
            )),
        body: Obx(() => getCurrentPage()));
  }

  Widget getCurrentPage() {
    switch (controller.currentIndex.value) {
      case 0:
        return const HomeView();
      case 1:
        return const ServicesView();
      case 2:
        return const CartView();
      case 3:
        return const AccountView();
      default:
        return const HomeView();
    }
  }
}
