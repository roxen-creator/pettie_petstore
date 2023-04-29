import 'package:flutter/material.dart';


import 'package:pettie_petstore/src/constants/size.dart';
import 'package:pettie_petstore/src/constants/string_manager.dart';

import 'package:pettie_petstore/src/features/core/screens/dashboard/widget/category_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/widget/nav_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/widget/product_card.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/widget/product_carousel.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/widget/search_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/widget/section_title.dart';

import '../../models/product/product_model.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
   
    final txtTheme = Theme.of(context).textTheme;
    
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: Text(
          pAppName,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: true,
        elevation: 25,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black45),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              ),
            ),
         
          )
       
        ],
        
        
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dashBoardPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Welcome,",
              style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87),
            ),
            Text(
              "Name",
              style: txtTheme.displayMedium?.apply(color: Colors.grey),
            ),
            const SizedBox(
              height: dashBoardPadding,
            ),

            const SearchBar(),

            const SizedBox(
              height: dashBoardPadding,
            ),
          SectionTitle(txtTheme: txtTheme, title: catagories),
           

            const CategoryBar(),
            
 SectionTitle(txtTheme: txtTheme, title: 'Best Product'),

             ProductCarousel(
      products:Product.products
      .where((product) =>  product.isRecommended).toList()),

         
          ]),
       
        ),
        
      ),
    
    bottomNavigationBar:const NavBar(), 
    
    );
  }
}



