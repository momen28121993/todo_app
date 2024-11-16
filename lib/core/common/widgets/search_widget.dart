
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_dimension.dart';
import '../../../core/constant/app_font.dart';

class SearchWidget extends StatelessWidget {
  final void Function(String)? onChange ;
  final String title;
  final void Function()? onPressIcon ;
  final void Function()? onPressSearch ;
  final void Function()? onPressFavorite ;

  const SearchWidget({super.key, required this.title,required this.onPressIcon,required this.onPressSearch, required this.onPressFavorite, this.onChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: AppMargin.marg10.h),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              onChanged: onChange,
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: AppFontSize.s20.sp),
                hintText: title,
                prefixIcon: IconButton(
                    onPressed: onPressSearch,
                    icon: Icon(Icons.search_outlined,
                      size: AppSizeWidth.s30,
                      color: AppColor.primary,)

                ),
                filled: true,
                fillColor: AppColor.lightGrey,
                border:  OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(AppSizeRadius.s20)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
           SizedBox(
            width: AppSizeWidth.s8,
          ),
          Container(
              decoration: BoxDecoration(
                  color: AppColor.lightGrey,
                  borderRadius: BorderRadius.circular(AppSizeRadius.s20)),
              width: AppSizeWidth.s50,
              padding:
               EdgeInsets.symmetric(vertical: AppSizeHeight.s10),
              child: IconButton(
                  onPressed: onPressFavorite,
                  icon: Icon(
                    Icons.favorite_rounded,
                    size: AppSizeWidth.s30,
                    color: AppColor.primary,
                  ))),
           SizedBox(
            width: AppSizeWidth.s8,
          ),
          Container(
              decoration: BoxDecoration(
                  color: AppColor.lightGrey,
                  borderRadius: BorderRadius.circular(AppSizeRadius.s20)),
              width: AppSizeWidth.s50,
              padding:
               EdgeInsets.symmetric(vertical: AppSizeHeight.s10),
              child: IconButton(
                  onPressed: onPressIcon,
                  icon: Icon(
                    Icons.notifications_active_outlined,
                    size: AppSizeWidth.s30,
                    color: AppColor.primary,
                  )
              )
          ),
        ],
      ),
    );
  }
}
