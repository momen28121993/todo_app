
import 'package:get/get.dart';

import 'core/constant/app_routes_name.dart';
import 'features/edit_task/view/screens/edit_task_screen.dart';
import 'features/home/presentation/screens/home_screen.dart';

List<GetPage<dynamic>> route = [


  //GetPage(name: '/', page: () => const TestPackage()),
 // GetPage(name: '/', page: () => const TestView()),

  /// home route
  GetPage(name: "/" , page: () => const HomeScreen() , transition: Transition.fadeIn,transitionDuration: const Duration(milliseconds: 900)),
  GetPage(name: AppRoutesNames.editTaskScreen , page: () => const EditTaskScreen() , transition: Transition.rightToLeft,transitionDuration: const Duration(milliseconds: 350)),

];


/*

routes based on flutter material used when change state management from GetX to another

Map<String, Widget Function(BuildContext)> routes = {

  AppRoutesNames.login : (context) => const Login(),
  AppRoutesNames.onBoarding : (context) => const OnBoarding(),
  AppRoutesNames.signup : (context) => const SignUp(),
  AppRoutesNames.forgetPassword : (context) => const ForgetPassword(),
  AppRoutesNames.resetPassword : (context) => const ResetPassword(),
  AppRoutesNames.verifyCode : (context) => const VerifyCodeResetPassword(),
  AppRoutesNames.successResetPassword : (context) => const SuccessResetPassword(),
  AppRoutesNames.successSignUp : (context) => const SuccessSignUp(),
  AppRoutesNames.verifyCodeSignUp : (context) => const VerifyCodeSignUp(),

};
*/
