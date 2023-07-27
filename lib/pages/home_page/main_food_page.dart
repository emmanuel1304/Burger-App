import 'package:burger/pages/home_page/food_page_body.dart';
import 'package:burger/utils/dimensions.dart';
import 'package:burger/widgets/big_text.dart';
import 'package:burger/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
          Container(
          child: Container(
            margin: const EdgeInsets.only(top: 45),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigText(
                            text: "Bangladesh",
                            color: const Color.fromARGB(255, 125, 221, 128),
                          ),
                          Row(
                            children: [
                              SmallText(text: "Nashingdi"),
                              const Icon(Icons.arrow_drop_down),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 127, 197, 129),
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const Expanded(child: SingleChildScrollView(child: FoodPageBody()))
              ],
            ),
          ),

        ),
        
        //Bottom Navbar Container
        Align( 
          alignment: Alignment.bottomCenter,
          child: Container( 
            padding: EdgeInsets.only(left: Dimensions.bottomNavbarContainerPadding20, right: Dimensions.bottomNavbarContainerPadding20, top: Dimensions.bottomNavbarContainerPadding20, bottom: 10),
            margin: EdgeInsets.only(left: Dimensions.bottomNavbarContainerMargin20, right: Dimensions.bottomNavbarContainerMargin20, bottom: Dimensions.bottomNavbarContainerMargin30),
            height: Dimensions.bottomNavbarContainerHeigth,
            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              boxShadow: const [ 
                BoxShadow( 
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 5)
                ),
                
              ]
            ),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ 
                Column( 
                  children: [ 
                    const Icon(Icons.home_filled),
                    SmallText(text: "Home"),
                  ],
                ),

                Column( 
                  children: [ 
                    const Icon(Icons.person),
                    SmallText(text: "Profile"),
                  ],
                ),

                Column( 
                  children: [ 
                    const Icon(Icons.search),
                    SmallText(text: "Search"),
                  ],
                ),

                Column( 
                  children: [ 
                    const Icon(Icons.settings),
                    SmallText(text: "Settings"),
                  ],
                ),
              ],
            ),
          ),
        )

      ]
      ),
    );
  }
}
