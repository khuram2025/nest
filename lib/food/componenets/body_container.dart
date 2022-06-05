import 'package:flutter/material.dart';
import 'package:nest/food/componenets/constants.dart';
import 'package:nest/food/componenets/service_card.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kPadding),
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          ServicesCard(),
        ],

      ),
    );
  }
}
