
import 'package:get/get.dart';

import '../controller/tab_host_controller.dart';




class CoreBinding implements Bindings {
  @override
  void dependencies() async {
    // initialize bindings that are shared throughout the application

    Get.lazyPut(() => TabHostController());







  }
}
