import 'package:flutter/material.dart';

class FoodPageBod extends StatefulWidget {
  const FoodPageBod({super.key});

  @override
  State<FoodPageBod> createState() => _FoodPageBodState();
}

class _FoodPageBodState extends State<FoodPageBod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(itemCount: 5 ,
      itemBuilder: (context,position){
        return _buildPageItem(position);
      }),
    );
  }
  Widget _buildPageItem(int index){
    return Container();
  }
}
