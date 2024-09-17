import 'package:oxyshine/common/widgets/appbar/appbar.dart';
import 'package:oxyshine/common/widgets/products/cart/notifications_icon.dart';
import 'package:oxyshine/features/personalization/controllers/user_controller.dart';
import 'package:oxyshine/features/shop/screens/notifications/notification_screen.dart';
import 'package:oxyshine/utils/constants/colors.dart';
import 'package:oxyshine/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(UserController());
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: TColors.white),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .apply(color: TColors.grey),
          ),
        ],
      ),
      actions: [
        // IconButton(
        //   onPressed: () => AuthenticationRepository.instance.logout(),
        //   icon: const Icon(
        //     Iconsax.logout,
        //     color: Colors.white,
        //   ),
        // ),
        TNotificationsIcon(
          onPressed: () {
            Get.to(() => const NotificationScreen());
          },
          iconColor: TColors.white,
        ),
      ],
    );
  }
}
