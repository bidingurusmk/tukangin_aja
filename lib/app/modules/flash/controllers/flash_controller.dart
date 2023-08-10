import 'package:get/get.dart';
import 'package:tukangin_yuuk/app/routes/app_pages.dart';

class FlashController extends GetxController {
  //TODO: Implement FlashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routes.LOGIN);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
