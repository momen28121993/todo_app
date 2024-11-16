import 'package:flutter/material.dart';

import '../../constant/app_color.dart';
import '../../constant/app_dimension.dart';

class CustomSearchButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon ;
  const CustomSearchButton({
    super.key, this.onPressed, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColor.grey.withOpacity(.2)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s16))),
        ),
        onPressed: onPressed, icon:  Icon(icon,size: AppSize.s28,));
  }
}
