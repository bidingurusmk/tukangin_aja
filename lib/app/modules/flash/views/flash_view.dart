import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flash_controller.dart';

class FlashView extends GetView<FlashController> {
  const FlashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlashController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('FlashView'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'FlashView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
