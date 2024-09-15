import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oxyshine/common/widgets/loaders/animation_loader.dart';
import 'package:oxyshine/utils/constants/colors.dart';
import 'package:oxyshine/utils/helpers/helper_functions.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!)
              ? TColors.dark
              : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              TAnimationLoader(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  /// stop the currnetly open loading dialog
  /// This method doesn't return anything
  static stopLoading() {
    Navigator.of(Get.context!).pop();
  }
}
