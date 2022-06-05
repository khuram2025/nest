import 'package:flutter/material.dart';

import '../componenets/body_container.dart';
import '../componenets/header_container.dart';





class FoodHome extends StatelessWidget {
  const FoodHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HeaderContainer(),
              BodyContainer(),
            ],

          ),
        ),
      ),

    );
  }
}
