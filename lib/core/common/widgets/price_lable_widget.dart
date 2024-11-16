

import 'package:flutter/material.dart';
import '../../constant/app_color.dart';
import '../../constant/app_font.dart';

class PriceLabelWidget extends StatelessWidget {

 final double price ;
 final double wightOrCount ;
 final String unit ;
 final bool visible ;

  const PriceLabelWidget({super.key, required this.price, required this.wightOrCount, required this.unit, required this.visible});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Text.rich(
        textDirection: TextDirection.ltr,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      TextSpan(
        style: const TextStyle(
          overflow: TextOverflow.ellipsis,
        ),
          children:  [
            TextSpan(
              text: "$price E£",
              style: TextStyle(color: AppColor.red, fontSize: AppFontSize.s16,),
            ),
            const TextSpan(
                text: " / "
            ),
             TextSpan(
                text: " $wightOrCount $unit",
              style:  TextStyle(fontSize: AppFontSize.s14),

            ),
          ]
      ),
    ),);
  }
}
