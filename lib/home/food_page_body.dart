import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}
//carosal added

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController=PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 235, 232, 232),
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children:[ Container(
        height: 220,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color:index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
          
       image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image/images.png"),),),
      ),
      Align(
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          margin: EdgeInsets.only(left: 30, right: 30,bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:Colors.white,
),
child: Container( 
  padding: EdgeInsets.only(top: 10,left: 15,right: 15),
child: Column(
  children: [],
),
),
        ),
      ),
    ],);
  }
}
