import 'package:burger/utils/dimensions.dart';
import 'package:burger/widgets/expandable_text_widget.dart';
import 'package:burger/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({super.key});

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      bottomNavigationBar: Container( 
        height: Dimensions.bottomBarMainContainerHeigth,
        padding: EdgeInsets.only(left: Dimensions.bottomNavbarContainerMargin20, right: Dimensions.bottomNavbarContainerMargin20, top: Dimensions.bottomNavbarContainerMargin30, bottom: Dimensions.bottomNavbarContainerMargin30),
        decoration: const BoxDecoration( 
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Color.fromARGB(255, 224, 222, 222),
        ),
        child: Row( 
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Container( 
              width: Dimensions.bottomBarMainContainer1ChildWidth,
              height: Dimensions.bottomBarMainContainerChildHeigth,
              //color: Colors.red,
              decoration: const BoxDecoration( 
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  IconButton( 
                    onPressed: (){},
                    icon: const Icon(Icons.add, color: Colors.black,),
                  ),

                  BigText(text: "0"),

                  IconButton( 
                    onPressed: (){},
                    icon: const Icon(Icons.remove, color: Colors.black,),
                  ),
                ],
              ),
            ),

            Container( 
              width: Dimensions.bottomBarMainContainer2ChildWidth,
              height: Dimensions.bottomBarMainContainerChildHeigth,
          
              decoration: BoxDecoration( 
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.green.shade300,
              ),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  BigText(text: "\$10 | Add to cart", color: Colors.white,)
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack( 
        children: [ 
          Positioned( 
            left: 0,
            right: 0,
            child: Container( 
              width: double.maxFinite,
              height: 430,
              decoration: const BoxDecoration( 
                image: DecorationImage( 
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/burger5.png"))
              ),
            ),
          ), 

          Positioned( 
            left: Dimensions.bottomNavbarContainerMargin20,
            right: Dimensions.bottomNavbarContainerMargin20,
            top: Dimensions.pageViewSmallContainerMargin40+5.0,
            child: const Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                CustomIconButton(icon: Icons.arrow_back_ios),
                CustomIconButton(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),

          Positioned( 
            top: 400,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container( 
              padding: EdgeInsets.only(left: Dimensions.bottomNavbarContainerPadding20, right: Dimensions.bottomNavbarContainerPadding20, top: Dimensions.bottomNavbarContainerPadding20),
              height: 300,
              decoration: const BoxDecoration( 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Chinese Side", size: Dimensions.bottomNavbarContainerMargin30,),
                SizedBox(
                  height: Dimensions.sizedBoxHeigth10,
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                          5,
                          (index) => const Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 241, 222, 51),
                              )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SmallText(
                      text: "4.5",
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SmallText(
                      text: "1287",
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SmallText(
                      text: "comments",
                      color: Colors.grey,
                    )
                  ],
                ),
                SizedBox(
                  height: Dimensions.sizedBoxHeigth20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: "Normal",
                        iconColor: Colors.yellow),
                    SizedBox(
                      width: 10,
                    ),
                    IconAndTextWidget(
                        icon: Icons.location_on,
                        text: "1.7km",
                        iconColor: Color.fromARGB(255, 147, 223, 150)),
                    SizedBox(
                      width: 10,
                    ),
                    IconAndTextWidget(
                        icon: Icons.access_time_rounded,
                        text: "32mins",
                        iconColor: Color.fromARGB(255, 147, 223, 150)),
                  ],
                ),

                SizedBox(height: Dimensions.sizedBoxHeigth40,),

                BigText(text: "Introduce", size: 22,),

                SizedBox(height: Dimensions.sizedBoxHeigth20,),

                const ExpandableTextWidget( 
                  text: "This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet This is some dummy text lorem ipsum dolar sit amet ",
                  
                )


              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}