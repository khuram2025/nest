import 'package:flutter/material.dart';
import 'package:nest/food/componenets/constants.dart';
import 'package:nest/food/componenets/header.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Header()
              ],
            ),
          )
        ],
      ),


    );
  }
}
