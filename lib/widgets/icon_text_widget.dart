import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/widgets/small-text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconcolor;

  const IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.color,
      required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconcolor,
        ),
        SizedBox(
          width: 5,
        ),
        smallText(
          text: text,
        ),
      ],
    );
  }
}
