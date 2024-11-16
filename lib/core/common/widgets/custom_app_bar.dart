import 'package:flutter/material.dart';
import 'package:todo_app/core/constant/app_dimension.dart';
import 'package:todo_app/core/constant/app_strings.dart';

import '../../constant/app_color.dart';
import '../../constant/app_font.dart';
import 'custom_search_button.dart';

class CustomAppBar extends StatelessWidget {
  final void Function()? onPressed ;
  const CustomAppBar({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(AppStrings.todoList , style: TextStyle(
           fontSize: AppFontSize.s25,
         ),),
         CustomSearchButton(
          onPressed: onPressed,
        )
      ],
    );
  }
}


