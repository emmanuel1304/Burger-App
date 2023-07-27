import 'package:burger/utils/dimensions.dart';
import 'package:burger/widgets/big_text.dart';
import 'package:burger/widgets/icon_and_text_widget.dart';
import 'package:burger/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        print("Current Page Value is : $_currentPageValue");
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider parent container
        Container(
            margin: const EdgeInsets.only(bottom: 10),
            //color: Colors.red,
            height: Dimensions.pageViewParentContainerHeigth,
            child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return buildPageItem(index);
              },
            )),

        // dots indicator
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue.floor(),
          decorator: const DotsDecorator(
              size: Size.square(9.0),
              activeSize: Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)))),
        ),

        SizedBox(
          height: Dimensions.sizedBoxHeigth20,
        ),

        //porpular text
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              BigText(text: "Popular"),
              const SizedBox(
                width: 10,
              ),
              SmallText(text: "Food Pairing")
            ],
          ),
        ),

        Container(
          height: 700,
          child: ListView.builder(
            //shrinkWrap: true,
            //physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container( 
                //color: Colors.blue,
                child: Row( 
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ 
                    Container( 
                      width: Dimensions.popularImageContainer,
                      height: Dimensions.popularImageContainer,
                      decoration: BoxDecoration( 
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage( 
                          image: AssetImage("assets/images/burger3.webp"),
                          fit: BoxFit.cover
                        )
                      ),
                      margin: const EdgeInsets.only( bottom: 10, left: 10,),
                      
                    ),
                    Expanded(
                      child: Container( 
                        height: Dimensions.popularImage2Container,
                        decoration: const BoxDecoration( 
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                        ),
                        child: Padding( 
                          padding: const EdgeInsets.only(left: 10),
                          child: Column( 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(text: "Nutritious Fruit Meal In China town"),
                              SizedBox(height: Dimensions.sizedBoxHeigth10,),
                              SmallText(text: "With Chinese Characteristics"),
                              SizedBox(height: Dimensions.sizedBoxHeigth10,),
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
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget buildPageItem(int index) {
    return Stack(
      children: [

        //food slider first container
        Container(
          height: Dimensions.pageViewContainerHeigth,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage("assets/images/burger4.jpg"),
                  fit: BoxFit.cover)),
        ),



        //food slider bottom container
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Dimensions.pageViewSmallContainerHeigth,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
            ),
            margin: EdgeInsets.only(left: Dimensions.pageViewSmallContainerMargin40, right: Dimensions.pageViewSmallContainerMargin40, bottom: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 7.0, offset: Offset(0, 5))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Chinese Side"),
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
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
