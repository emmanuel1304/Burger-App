import 'package:burger/pages/home_page/food_page_body.dart';
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
    return  Scaffold( 
      body: Container(
        child: Container( 
          margin: const EdgeInsets.only(top: 45),
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                child: Row( 
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Column( 
                      children: [ 
                        BigText(text: "Bangladesh", color: const Color.fromARGB(255, 125, 221, 128),),
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
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: const Icon(Icons.search, color: Colors.white,),
                    )
                  ],
                ),
              ),
              const FoodPageBody()
            ],
          ),
        ),
      ),
    );
  }
}