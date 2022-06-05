import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200.0, vertical: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/icons/logo.svg"),
                      Container(
                        height: 54,
                        width: 700,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Text("All Categories", style: TextStyle(color: Color(0xff253D4E), fontSize: 14)),
                              Icon(Icons.arrow_drop_down_outlined),
                              SizedBox(width: 5,),
                              Text("|"),
                              SizedBox(width: 10,),
                              Text("Search for Items", style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 400,),
                              Icon(Icons.search, color: Colors.grey,),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffBCE3C9))
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 149,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.location_on_outlined, size: 15, color: Colors.grey,),
                              SizedBox(width: 5,),
                              Text("Your Location", style: TextStyle(color: Color(0xff3bb77e), fontSize: 14),),
                              // SizedBox(width: 10,),
                              Icon(Icons.arrow_drop_down_outlined, size: 17, color: Colors.grey,),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffBCE3C9))
                        ),
                      ),
                      ImageText(title: Text("Compare"),
                        image: SvgPicture.asset("assets/icons/icon-compare.svg"),),
                      ImageText(title: Text("Wishlist"),
                        image: SvgPicture.asset("assets/icons/icon-heart.svg"),),
                      ImageText(title: Text("Cart"),
                        image: SvgPicture.asset("assets/icons/icon-cart.svg"),),
                      ImageText(title: Text("Account"),
                        image: SvgPicture.asset("assets/icons/icon-user.svg"),)
                    ],
                  ),
                ),
                Divider(),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44,
                          width: 256,
                          decoration: BoxDecoration(
                            color: Color(0xff3bb77e),
                            borderRadius: BorderRadius.circular(5),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                // SvgPicture.asset(assetName),
                                Icon(Icons.drag_indicator, color: Colors.white,),
                                Text("Browse All Categories", style: TextStyle(fontSize: 16, color: Colors.white),),
                                Icon(Icons.arrow_drop_up_outlined, color: Colors.white,)

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        ImageText(title: Text("Deals", style: TextStyle(fontSize: 16, color: Color(0xff264250), fontWeight: FontWeight.w700)),
                          image: SvgPicture.asset("assets/icons/icon-hot.svg"),),
                        SizedBox(width: 100,),
                        Row(
                          children: [
                            TextImage( title: Text("Home", style: TextStyle(fontSize: 16, color: Color(0xff264250), fontWeight: FontWeight.w700),)),
                            TextImage( title: Text("About", style: TextStyle(fontSize: 16, color: Color(0xff264250), fontWeight: FontWeight.w700),)),
                            TextImage( title: Text("Shop", style: TextStyle(fontSize: 16, color: Color(0xff264250), fontWeight: FontWeight.w700),)),
                            TextImage( title: Text("Vendors", style: TextStyle(fontSize: 16, color: Color(0xff264250), fontWeight: FontWeight.w700),)),
                            TextImage( title: Text("Mega Menue", style: TextStyle(fontSize: 16, color: Color(0xff264250), fontWeight: FontWeight.w700),)),
                            TextImage( title: Text("Blog", style: TextStyle(fontSize: 16, color: Color(0xff264250), fontWeight: FontWeight.w700),)),
                            TextImage( title: Text("Pages", style: TextStyle(fontSize: 16, color: Color(0xff264250), fontWeight: FontWeight.w700),)),
                            TextImage( title: Text("Contact", style: TextStyle(fontSize: 16, color: Color(0xff264250), fontWeight: FontWeight.w700),)),

                          ],
                        ),
                        SizedBox(width: 250,),

                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/icon-headphone.svg"),
                            Column(
                              children: [
                                Text("1900 - 888", style: TextStyle(color: Color(0xff3bb77e), fontSize: 26, fontWeight: FontWeight.bold), ),
                                Text("24/7 Support Center", style: TextStyle(color: Color(0xff7e7e7e), fontSize: 12),)
                              ],
                            )

                          ],
                        )

                      ],
                    )
                ),
                Divider(),
                FeaturedCategories(),
                // Fetured categories

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FCategories(
                        color: Color(0xfff2fce4),
                        image: Image.asset("assets/images/cat-1.png", height: 100,),
                        title: Text("Coffe & Milk", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff253D4E)),),
                        items: Text("26 items"),
                      ),
                      SizedBox(width: 25,),
                      FCategories(
                        color: Color(0xfff2fce4),
                        image: Image.asset("assets/images/cat-2.png", height: 100,),
                        title: Text("Organic Kiwi", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff253D4E)),),
                        items: Text("28 items"),
                      ),
                      SizedBox(width: 25,),
                      FCategories(
                        color: Color(0xfffff3ff),
                        image: Image.asset("assets/images/cat-3.png", height: 100,),
                        title: Text("Peach", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff253D4E)),),
                        items: Text("14 items"),
                      ),
                      SizedBox(width: 25,),
                      FCategories(
                        color: Color(0xfff2fce4),
                        image: Image.asset("assets/images/cat-5.png", height: 100,),
                        title: Text("Red Apple", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff253D4E)),),
                        items: Text("54 items"),
                      ),
                      SizedBox(width: 25,),
                      FCategories(
                        color: Color(0xfffeefea),
                        image: Image.asset("assets/images/cat-9.png", height: 100,),
                        title: Text("Snack", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff253D4E)),),
                        items: Text("56 items"),
                      ),
                      SizedBox(width: 25,),
                      FCategories(
                        color: Color(0xfffffceb),
                        image: Image.asset("assets/images/cat-11.png", height: 100,),
                        title: Text("Vegetables", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff253D4E)),),
                        items: Text("72 Items"),
                      ),
                      SizedBox(width: 25,),
                      FCategories(
                        color: Color(0xfff2fce4),
                        image: Image.asset("assets/images/cat-12.png", height: 100,),
                        title: Text("Strabery", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff253D4E)),),
                        items: Text("36 Items"),
                      ),
                      SizedBox(width: 25,),
                      FCategories(
                        color: Color(0xfffffceb),
                        image: Image.asset("assets/images/cat-13.png", height: 100,),
                        title: Text("Black Plum", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff253D4E)),),
                        items: Text("123 items"),
                      ),
                      SizedBox(width: 25,),
                      FCategories(
                        color: Color(0xfff2fce4),
                        image: Image.asset("assets/images/cat-14.png", height: 100,),
                        title: Text("Custard Apple", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff253D4E)),),
                        items: Text("34 items"),
                      ),
                      SizedBox(width: 25,),

                    ],
                  ),
                ),
                PapularProducts(),
                Row(
                  children: [
                    ProductCard(),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}






class FeaturedCategories extends StatelessWidget {
  const FeaturedCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Text("Featured Categories", style: TextStyle(fontSize: 35, color: Color(0xff253d4e), fontWeight: FontWeight.bold),),
        SizedBox(width: 50,),
        Text("Cake & Milk", style: TextStyle(fontSize: 16, color: Color(0xff253d4e)),),
        SizedBox(width: 50,),
        Text("Coffe & Teas", style: TextStyle(fontSize: 16, color: Color(0xff253d4e)),),
        SizedBox(width: 50,),
        Text("Pet Foods", style: TextStyle(fontSize: 16, color: Color(0xff253d4e)),),
        SizedBox(width: 50,),
        Text("Vegetables", style: TextStyle(fontSize: 16, color: Color(0xff253d4e)),),

      ],
    );
  }
}



class PapularProducts extends StatelessWidget {
  const PapularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Expanded(child: Text("Pupular Products", style: TextStyle(fontSize: 35, color: Color(0xff253d4e), fontWeight: FontWeight.bold),)),
        SizedBox(width: 500,),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("All", style: TextStyle(fontSize: 16, color: Color(0xff3bb77e)),),
              Text("Coffe & Teas", style: TextStyle(fontSize: 16, color: Color(0xff253d4e)),),
              Text("Pet Foods", style: TextStyle(fontSize: 16, color: Color(0xff253d4e)),),
              Text("Vegetables", style: TextStyle(fontSize: 16, color: Color(0xff253d4e)),),
              Text("Cake & Milk", style: TextStyle(fontSize: 16, color: Color(0xff253d4e)),),
              Text("Coffe & Teas", style: TextStyle(fontSize: 16, color: Color(0xff253d4e)),),
            ],
          ),
        ),



      ],
    );

  }
}

class FCategories extends StatelessWidget {

  final Text items;
  final Image image;
  final Text title;
  final Color color;

  const FCategories({
    Key? key, required this.items, required this.image, required this.title, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: Column(

          children: [
            image,

            title,
            SizedBox(height: 20,),
            items

          ],

        ),
      ),
    );
  }
}






class ImageText extends StatelessWidget {
  final Text title;
  final SvgPicture image;

  const ImageText({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image,
        SizedBox(width: 10,),
        title,
      ],
    );
  }
}






class TextImage extends StatelessWidget {
  final Text title;


  const TextImage({
    Key? key,
    required this.title,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title,
        SizedBox(width: 10,),
        Icon(Icons.arrow_drop_down_outlined, size: 18, color: Colors.grey,)
      ],
    );
  }
}



class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 465,
      width: 298,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/product-6-2.jpg"),
          Text("Test"),
          Text("Title0"),
          Row(
            children: [

            ],
          )

        ],
      ),

    );
  }
}





