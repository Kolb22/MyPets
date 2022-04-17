
import 'package:pets/app/modules/home/home_binding.dart';
import 'package:pets/app/modules/home/home_page.dart';
import 'package:pets/app/modules/login/login_binding.dart';
import 'package:pets/app/modules/login/login_page.dart';
import 'package:pets/app/modules/pet/pet_binding.dart';
import 'package:pets/app/modules/pet/pet_page.dart';
import 'package:pets/app/modules/pet_list/pet_list_binding.dart';
import 'package:pets/app/modules/pet_list/pet_list_page.dart';
import 'package:pets/app/modules/register/register_binding.dart';
import 'package:pets/app/modules/register/register_page.dart';
import 'package:pets/app/modules/splash/splash_binding.dart';
import 'package:pets/app/modules/splash/splash_page.dart';
import 'package:get/route_manager.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.SPLASH, page: () => const SplashPage(), binding: SplashBinding()),
    GetPage(name: AppRoutes.LOGIN, page: () => const LoginPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.HOME, page: () =>  const HomePage(), binding: HomeBinding()),
    GetPage(name: AppRoutes.REGISTER, page: () =>  const RegisterPage(), binding: RegisterBinding()),
    GetPage(name: AppRoutes.PET, page: () =>  const PetPage(), binding: PetBinding()),
    GetPage(name: AppRoutes.PETS, page: () =>  const PetListPage(), binding: PetListBinding()),
  ];
}
