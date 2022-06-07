import 'package:flutter/material.dart';


class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(title: 'Menu', press: () {},),
        SizedBox(width: 15,),
        HeaderMenu(title: 'For Riders', press: () {},),
        SizedBox(width: 15,),
        HeaderMenu(title: 'About', press: () {},),
        SizedBox(width: 15,),
        HeaderMenu(title: 'Reviews', press: () {},),
        SizedBox(width: 15,),
        HeaderMenu(title: 'Resturants', press: () {},),
      ],
    );
  }
}

class HeaderMenu extends StatelessWidget {

  const HeaderMenu({

    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(title, style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16
        ),),
      ),
    );
  }
}
