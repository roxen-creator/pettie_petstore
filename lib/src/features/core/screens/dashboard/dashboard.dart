import 'package:flutter/material.dart';
import 'package:pettie_petstore/src/constants/color_manager.dart';
// import 'package:pettie_petstore/src/constants/image_string.dart';
import 'package:pettie_petstore/src/constants/size.dart';
import 'package:pettie_petstore/src/constants/string_manager.dart';
import 'package:pettie_petstore/src/features/core/models/dashboard/categories_model.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/widget/search_bar.dart';



class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategories.list;
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
              icon: const Icon(Icons.notifications,),
            ),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dashBoardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome,",
                style: TextStyle(fontFamily: 'monospace', fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black87 ),
              ),
              Text(
                "Name",
                style: txtTheme.displayMedium?.apply(color: Colors.grey),
              ),
              const SizedBox(
                height: dashBoardPadding,
              ),

//search
                const SearchBar(),
//catagory
const SizedBox(height: dashBoardPadding,),

              SizedBox(
                height: 45,
                child: ListView.builder(
                  itemCount: list.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (context, index)=> GestureDetector(
                    onTap: list[index].onPress,
                    child: SizedBox(
                        width: 170,
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: cDarkColor,
                              ),
                              child: Center(
                                child: Text(
                  
                                  list[index].title
                                  ,
                                  style: txtTheme.displayMedium
                                      ?.apply(color: Colors.white),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    list[index].heading,
                                    style: txtTheme.displaySmall,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                   list[index].subHeading,
                                    style: txtTheme.bodyMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  ),
                  
                ),
              ),
              const SizedBox(
                height: dashBoardPadding,
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Expanded(
              //       child: Container(
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: tCardBgColor),
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 10, vertical: 20),
              //         child: Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: const [
              //                 Flexible(
              //                     child: Image(
              //                   image: AssetImage(pSplashScreen),
              //                 )),
              //                 Flexible(
              //                     child: Image(
              //                   image: AssetImage(pWeclomeScreenImage),
              //                 )),
              //               ],
              //             ),
              //             const SizedBox(
              //               height: 25,
              //             ),
              //             Text(
              //               appDashboardingHeading,
              //               style: txtTheme.displayMedium,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //             Text(
              //               appDashboardingTitle,
              //               style: txtTheme.bodySmall,
              //               maxLines: 1,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: dashBoardCardPadding,
              //     ),
              //     Expanded(
              //       child: Column(
              //         children: [
              //           Container(
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 color: tCardBgColor),
              //             padding: const EdgeInsets.symmetric(
              //                 horizontal: 10, vertical: 20),
              //           )
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: dashBoardPadding,
              // ),
              // Text(
              //   "Best Slleer",
              //   style: txtTheme.displayLarge?.apply(fontSizeFactor: 1.2),
              // ),
              // SizedBox(
              //   height: 200,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     children: [
              //       SizedBox(
              //         width: 320,
              //         height: 200,
              //         child: Padding(
              //           padding: const EdgeInsets.only(right: 10),
              //           child: Container(
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 color: tCardBgColor),
              //             padding: const EdgeInsets.all(10),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Row(
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   children: [
              //                     Flexible(
              //                         child: Text(
              //                       'dogs',
              //                       style: txtTheme.displaySmall,
              //                       maxLines: 2,
              //                       overflow: TextOverflow.ellipsis,
              //                     )),
              //                     const Flexible(
              //                         child: Image(
              //                             image: AssetImage(welcomeImg2),
              //                             height: 110)),
              //                   ],
              //                 ),
              //                 Row(
              //                   children: [
              //                     ElevatedButton(
              //                       style: ElevatedButton.styleFrom(
              //                           shape: const CircleBorder()),
              //                       onPressed: () {},
              //                       child:
              //                           const Icon(Icons.heart_broken_outlined),
              //                     ),
              //                     const SizedBox(
              //                       width: dashBoardPadding,
              //                     ),
              //                     Column(
              //                       crossAxisAlignment:
              //                           CrossAxisAlignment.start,
              //                       children: [
              //                         Text(
              //                           '3 section',
              //                           style: txtTheme.displayLarge,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                         Text(
              //                           'petstore',
              //                           style: txtTheme.bodyMedium,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ],
              //                     )
              //                   ],
              //                 )
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}


