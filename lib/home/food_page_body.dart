import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/widgets/big-text.dart';
import 'package:food_delivery_app/widgets/icon_text_widget.dart';
import 'package:food_delivery_app/widgets/small-text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pagecntrl = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pagecntrl,
          itemCount: 5,
          itemBuilder: (context, position) {
            return buildPageItem(position);
          }),
    );
  }

  Widget buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? Color.fromARGB(255, 136, 158, 252)
                  : Color.fromARGB(255, 47, 94, 155),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/food2.jpg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 130,
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chicken Biryani"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        smallText(text: "4.5"),
                        SizedBox(
                          width: 20,
                        ),
                        smallText(text: "1218"),
                        SizedBox(
                          width: 5,
                        ),
                        smallText(text: "comments"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconcolor: Colors.amber,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "Patna",
                          iconcolor: Colors.green,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        IconAndTextWidget(
                          icon: Icons.access_time_rounded,
                          text: "32min",
                          iconcolor: Colors.red,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
