import 'package:get/get.dart';
import 'package:modul3mobile/presentation/controllers/auth_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
          () => AuthController(),
    );
  }
}

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
          () => AuthController(),
    );
  }
}
