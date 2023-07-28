import "package:get/get.dart";

class Dimensions {
  static double screenHeigth = Get.height;
  static double screenWidth = Get.width;

  //the pageview heights
  static double pageViewParentContainerHeigth = screenHeigth / 2.68;
  static double pageViewContainerHeigth = screenHeigth / 3.96;
  static double pageViewSmallContainerHeigth = screenHeigth / 6.61;
  static double pageViewSmallContainerMargin40 = screenHeigth / 24.8;

  static double sizedBoxHeigth20 = screenHeigth / 49.6;
  static double sizedBoxHeigth10 = screenHeigth / 99.2;
  static double sizedBoxHeigth40 = screenHeigth / 24.8;

  //list view sizes
  static double popularImageContainer = screenHeigth / 7.63;
  static double popularImage2Container = screenHeigth / 9.92;

  //bottom navbar sizes
  static double bottomNavbarContainerPadding20 = screenHeigth / 49.6;
  static double bottomNavbarContainerMargin20 = screenHeigth / 49.6;
  static double bottomNavbarContainerMargin30 = screenHeigth / 33.06;
  static double bottomNavbarContainerHeigth = screenHeigth / 12.4;

  //food detail background image container heigth
  static double foodDetailPageBackgroundImageHeigth = screenHeigth / 2.30;

  //bottombar container heigths
  static double bottomBarMainContainerHeigth = screenHeigth / 8.26;
  static double bottomBarMainContainerChildHeigth = screenHeigth / 9.01;
  static double bottomBarMainContainer1ChildWidth = screenHeigth / 7.63;
  static double bottomBarMainContainer2ChildWidth = screenHeigth / 5.22;
}
