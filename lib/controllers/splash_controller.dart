import 'package:get/get.dart';

import '../routers/my_router.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _getClientInformation();
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      Get.offAndToNamed(MyRouter.loginScreen);
      // Get.to(AllHostsScreen());
      // Get.offAndToNamed(MyRouter.logInScreen);
    });
  }

  Future<void> _getClientInformation() async {
    // ClientInformation? info;
    // try {
    //   info = await ClientInformation.fetch();
    // } on PlatformException {
    //   log('Failed to get client information');
    // }
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('deviceId', info!.deviceId.toString());
  }
}
