import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pettie_petstore/src/features/core/screens/product/product_screen.dart';

import '../../models/product/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;

  const ProductCard({
    super.key,
    required this.product,
    this.widthFactor = 1.5
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(()=> const ProductScreen(), arguments: product),
      child: Stack(
        children: [
          SizedBox(
         
            
            width: MediaQuery.of(context).size.width /widthFactor,
            height: 150,
            
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 70,
            left: 5,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.1- 10,
              height: 60,
              decoration:  BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withAlpha(40),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
    
                              product.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: Colors.white, fontWeight:FontWeight.w700 ),
                            ),
                          ),
                          Text(
                            'Rs.${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.white,
                                 ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
