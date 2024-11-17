import 'package:get/get.dart';
import '../constant/app_strings.dart';

valid(String type, int min, int max, String value) {
  if (type == AppStrings.title) {


  }
  if (type == AppStrings.details) {


  }

  if(value.isEmpty){
    return 'its cant be empty';
  }
  if (value.length < min){
    return '${AppStrings.valueCannotBeLessThan.tr}$min' ;
  }
  if (value.length > max){
    return '${AppStrings.valueCannotBeMoreThan.tr}$max' ;
  }

}
