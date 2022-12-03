import 'package:ecommerce_demo_flutter/app/config/app_assets.dart';
import 'package:ecommerce_demo_flutter/app/models/menu.dart';
import 'package:flutter/material.dart';

var menus = [
  MenuModel(
      tittle: 'Home Care',
      image: AppAssets.ASSET_PRODUCT_ICON,
      color: Colors.blue[100]),
  MenuModel(tittle: 'Beauty', color: Colors.yellow[100]),
  MenuModel(tittle: 'Hygiene', color: Colors.green[100]),
  MenuModel(tittle: 'Cosmetics', color: Colors.red[100]),
];
