import 'package:flutter/material.dart';
import 'package:project/widgets/big_text.dart';
//main page of our mess app
//just created the outline

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Container(
              child: Container(
                margin: EdgeInsets.only(top: 45,bottom: 15),
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "India",color: Color.fromARGB(255, 127, 167, 128),),
                        Text("city"),
                      ],
                    ),
                    Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        child: Icon(Icons.search,color: Colors.white,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 140, 184, 142),
                          
                        ),
                                  
                      ),
                    )
                  ],
                ),
              )
            ),
        ],
      ),
    );
  
  }
}