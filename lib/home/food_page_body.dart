import 'package:flutter/material.dart';
import 'package:project/utils/dimensions.dart';


class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}
//carosal added

class _FoodPageBodyState extends State<FoodPageBody> {
  //PageController pageController = pageController(viewportFraction:0.85)
  //var _currPageValue=0.0;
  //double scaleFracture=0.8;
  //double height=Dimensions.Dimensions.pageViewContainer;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFF69c5df),
      ),
    );
  }
}
