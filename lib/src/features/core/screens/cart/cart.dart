import 'package:flutter/material.dart';

import 'package:pettie_petstore/src/features/core/models/cart/cart_model.dart';


import '../widget/app_bar.dart';
import '../widget/cart_product_card.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/CartScreen';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const CartScreen(),
    );
  }

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //CustomAppBar
      appBar: const MyAppBar(
        title: 'CartScreen',
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    'GO TO TO CHECKOUT',
                    style: Theme.of(context).textTheme.displaySmall,
                  ))
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cart().freeDeliveryString',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(),
                          elevation: 0,
                        ),
                        child: Text(
                          'Add more items',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: Colors.white),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: Cart().products.length,
                    itemBuilder: (context, index) => CartProductCard(
                      product: Cart().products[index],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 30.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SUBTOTAL',
                              style: Theme.of(context).textTheme.displaySmall),
                          Text('Rs.${Cart().subtotalString}',
                              style: Theme.of(context).textTheme.displaySmall),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('DELIVERY FEE',
                              style: Theme.of(context).textTheme.displaySmall),
                          Text('Rs.${Cart().deliveryFeeString}',
                              style: Theme.of(context).textTheme.displaySmall),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha(50),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5.0),
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('TOTAL',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: Colors.white)),
                            Text('Rs.${Cart().totalString}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
