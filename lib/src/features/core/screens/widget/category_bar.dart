import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pettie_petstore/src/features/core/models/category_model/category_model.dart';

import '../catalog/catalog_screen.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.5,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
      items: Category.catagories
          .map((category) => HeroCarouselCard(category: category))
          .toList(),
    );
  }
}

class HeroCarouselCard extends StatelessWidget {
  final Category category;

  const HeroCarouselCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
  onTap: () {
    Get.to(() => CatalogScreen(category: category), arguments: category);
  },
  // other InkWell properties here
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(category.imageUrl,
                    fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      category.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
