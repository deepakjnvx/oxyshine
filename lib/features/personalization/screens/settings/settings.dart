import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:oxyshine/common/widgets/appbar/appbar.dart';
import 'package:oxyshine/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:oxyshine/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:oxyshine/common/widgets/list_tile/user_profile_tile.dart';
import 'package:oxyshine/common/widgets/texts/section_heading.dart';
import 'package:oxyshine/data/repositories/authentication/authentication_repository.dart';
import 'package:oxyshine/features/personalization/screens/profile/profile.dart';
import 'package:oxyshine/utils/constants/colors.dart';
import 'package:oxyshine/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --AppBar
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  /// -- User Profile Card
                  TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            // -- Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings
                  TSectionHeading(title: 'Account Settings'),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Add Your Personal Address',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.document,
                    title: 'Medical History',
                    subTitle: 'See your Medical History',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'Appointmets',
                    subTitle: 'Browse your Appointments',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.wallet,
                    title: 'Oxyshine Wallet',
                    subTitle: 'Add Money to Seamless Transactions',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted Coupons',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of Notification message',
                    onTap: () {},
                  ),

                  /// -- App Setting
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: 'App Settings'),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload data to your Cloud Firestore',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.moon,
                    title: 'Theme',
                    subTitle: 'Switch to (Dark Mode / Light Mode)',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  ///  -- Logout button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () =>
                            AuthenticationRepository.instance.logout(),
                        child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

















































// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// // import 'package:iconsax_flutter/iconsax_flutter.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:oxyshine/common/widgets/custom_shapes/containers/primary_header_container.dart';
// import 'package:oxyshine/features/personalization/screens/profile/profile.dart';

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
          
//           // Profile Picture and Name
//           TPrimaryHeaderContainer(
//             height: 360,
//             child: Center(
//               child: Column(
//                 children: [
//                   SizedBox(height: 70),
//                   CircleAvatar(
//                     radius: 60,
//                     backgroundImage: AssetImage('assets/doctor/doctor_1.jpg'),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Sanjeev Sharma',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     'sanjeev@gmail.com',
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 16,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: Text('Upgrade to PRO'),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // Menu Options
//           Expanded(
//             child: ListView(
//               children: [
//                 buildMenuItem(Icons.privacy_tip, 'Privacy'),
//                 buildMenuItem(Icons.history, 'Purchase History'),
//                 buildMenuItem(Icons.help_outline, 'Help & Support'),
//                 buildMenuItem(Icons.settings, 'Settings'),
//                 buildMenuItem(Icons.person_add_alt, 'Invite a Friend'),
//                 buildMenuItem(Icons.logout, 'Logout'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildMenuItem(IconData icon, String title) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
//       child: ListTile(
//         minTileHeight: 60,
//         leading: Icon(icon, color: Colors.black),
//         title: Text(title),
//         trailing: Icon(Ionicons.chevron_forward_outline, color: Colors.grey),
//         onTap: () =>Get.to(()=>ProfileScreen()),
//       ),
//     );
//   }
// }
