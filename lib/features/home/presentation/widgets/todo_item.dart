import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_dimension.dart';
import '../../../../core/constant/app_font.dart';
import '../../../../core/constant/app_routes_name.dart';


class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(vertical:AppPadding.pad3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeRadius.s16),
          color: AppColor.orange
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            onTap: (){
              Get.toNamed(AppRoutesNames.editTaskScreen);
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: AppPadding.pad3).add(const EdgeInsets.only(top: AppPadding.pad20)),
            leading: Checkbox(value: true , onChanged: (value){} ,activeColor: AppColor.green,fillColor:  WidgetStateProperty.all(AppColor.white),),
            title: Text("note title" ,style: TextStyle(color: AppColor.black ,fontSize: AppFontSize.s20),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: AppPadding.pad8),
              child: Text("sub title the descriptions of the note we should give ",style: TextStyle(color: AppColor.black.withOpacity(.6),fontSize: AppFontSize.s16)),
            ),
            trailing: IconButton(onPressed: (){}, icon:  Icon(Icons.delete , color: AppColor.black,)),
            enabled: true,
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.pad8 , top: AppPadding.pad20),
            child: Text("may 21,2024" ,style: TextStyle(color: AppColor.black.withOpacity(.4),fontSize: AppFontSize.s14),),
          )
        ],
      ),
    );
  }
}