import 'package:ecommerce_demo_flutter/app/config/app_assets.dart';
import 'package:ecommerce_demo_flutter/app/config/app_themes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('CartView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: AppThemes.PrimaryLightColor,
              child: Row(
                children: const [
                  Icon(Icons.location_on),
                  SizedBox(width: 10),
                  Text('Deliver to Shariar - Rochester 14404')
                ],
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Subtotal',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(width: 10),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                                color: Colors.red, fontSize: 16),
                            children: [
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(0.0, -7.0),
                                  child: const Text(
                                    '\$',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const TextSpan(
                                text: '29',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(0.0, -7.0),
                                  child: const Text(
                                    '99',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.yellow[700]),
                      child: const Text(
                        'Proceed to checkout',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  AppAssets.ASSET_APP_LOGO,
                                  height: 96,
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Expanded(
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.remove)),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.all(0),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.0)),
                                                borderSide: BorderSide(
                                                    color: Colors.blue))),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Colors.black),
                                        controller:
                                            TextEditingController(text: '2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                    'SHCKE Bubble Machine 69 Holes Rocket Launcher Bubble Machine...'),
                                const Text('29 99'),
                                const Text(
                                  'Exclucive Prime Price',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const Text('In Stock',
                                    style: TextStyle(color: Colors.green)),
                                Row(
                                  children: const [
                                    Text(
                                      'Size: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('on size'),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Color: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('[Pink]'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          color: Colors.grey[200],
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('Delete'),
                                          ),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          color: Colors.grey[200],
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('Save for later'),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
