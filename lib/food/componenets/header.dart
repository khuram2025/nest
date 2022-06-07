import 'package:flutter/material.dart';

import 'constants.dart';
import 'menu.dart';


class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Foodie", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: kSecondaryColor),),
            Spacer(),
            HeaderWebMenu(),
            Spacer(),
            Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.3),

                      )
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none
                        ),
                      ),
                    ),
                  ),
                )),
            SizedBox(width: 10,),
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(color: kSecondaryColor, borderRadius: BorderRadius.circular(8.0)),
              child: Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 22,),
            )
          ],
        ),
        //Add Menue here

      ],
    );
  }
}

