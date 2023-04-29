import 'package:flutter/material.dart';

import '../../../models/product/product_model.dart';

class ProductCord extends StatelessWidget {
  final Product product;
  
  const ProductCord({
    super.key, required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 150,
          child: Image.network(
         product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 65,
          left: 5,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 10,
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Padding(

              padding: const EdgeInsets.all(8.0),
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
                                .displayMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      Text(
                      ' \Rs.${product.price}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                      ],
                    ),
                  ),
                 Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle, color: Colors.white,)))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
