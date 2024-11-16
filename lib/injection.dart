import 'package:get/get.dart';
import 'core/class/data_request.dart';
import 'features/home/controller/home_controller_impl.dart';

class AppBinding extends Bindings {
  @override
  void dependencies()  {
  //  Get.lazyPut(() => LoginControllerImpl(),fenix: true);
    Get.lazyPut(() => HomeControllerImpl(),fenix: true);


    /// data request injection

    Get.put(DataRequest());
    // Get.put(ItemData(Get.find()));

  }

}