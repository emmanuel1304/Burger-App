import 'package:burger/widgets/big_text.dart';
import 'package:burger/widgets/icon_and_text_widget.dart';
import 'package:burger/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.red,
        height: 380,
        child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return buildPageItem(index);
          },
        ));
  }

  Widget buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 300,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage("assets/images/musk7.jpg"),
                  fit: BoxFit.cover)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10,),
            margin: const EdgeInsets.only(left: 40, right: 40, bottom: 30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
            ),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                BigText(text: "Chinese Side"),

                const SizedBox(height: 10,),

                Row( 
                  children: [ 
                    Wrap( 
                      children: List.generate(5, (index) => const Icon(Icons.star, color: Color.fromARGB(255, 241, 222, 51),)),
                    ),
                    const SizedBox(width: 5,),
                    SmallText(text: "4.5", color: Colors.grey,),
                    const SizedBox(width: 5,),
                    SmallText(text: "1287", color: Colors.grey,),
                    const SizedBox(width: 5,),
                    SmallText(text: "comments", color: Colors.grey,) 
                  ],
                ),
                const SizedBox(height: 20,),

                const Row( 
                  children: [ 
                    IconAndTextWidget(icon: Icons.circle_sharp,  
                    text: "Normal",   
                    iconColor: Colors.yellow),

                    SizedBox(width: 10,),

                    IconAndTextWidget(icon: Icons.location_on,  
                    text: "1.7km",   
                    iconColor: Color.fromARGB(255, 147, 223, 150)),

                    SizedBox(width: 10,),

                    IconAndTextWidget(icon: Icons.access_time_rounded,  
                    text: "32mins",   
                    iconColor: Color.fromARGB(255, 147, 223, 150)),

                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
