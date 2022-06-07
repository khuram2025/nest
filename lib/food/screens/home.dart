import 'package:flutter/material.dart';
import 'package:nest/food/componenets/constants.dart';

import '../componenets/body_container.dart';
import '../componenets/header.dart';
import '../componenets/header_container.dart';
import '../componenets/menu.dart';





class FoodHome extends StatelessWidget {
  const FoodHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: kPrimaryColor,
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(kPadding),
                  constraints: BoxConstraints(maxWidth: kMaxWidth),
                  child: Column(
                    children: [
                      Header(),
                      SizedBox(height:10,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Eat Today", style:  TextStyle(
                                fontSize: 56, fontWeight: FontWeight.bold
                              ),),
                              Text("Live another Day ", style:  TextStyle(
                                  fontSize: 56,
                              ),),
                              Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                               dolore magna aliqua. Ut enim ad minim veniam, 
                              quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
                                  """, textAlign: TextAlign.center,)

                            ],
                          ),
                          Spacer(),
                          Image.asset("assets/images/banner.png")
                        ],
                      )
                    ],
                  ),
                )

              ],
            ),
          ),

        ],
      )

    );
  }
}

