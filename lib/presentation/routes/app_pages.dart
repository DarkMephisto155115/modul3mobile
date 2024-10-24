import 'package:get/get.dart';
import 'package:modul3mobile/presentation/bindings/main_binding.dart';
import 'package:modul3mobile/presentation/pages/home_screen.dart';
import 'package:modul3mobile/presentation/pages/login_screen.dart';
import 'package:modul3mobile/presentation/pages/register_screen.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRASI,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
  ];
}
