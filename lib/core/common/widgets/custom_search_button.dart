import 'package:flutter/material.dart';

import '../../constant/app_color.dart';
import '../../constant/app_dimension.dart';

class CustomSearchButton extends StatelessWidget {
  final void Function()? onPressed;
  const CustomSearchButton({
    super.key, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColor.grey.withOpacity(.2)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s16))),
        ),
        onPressed: onPressed, icon: const Icon(Icons.search_outlined,size: AppSize.s28,));
  }
}