import 'package:flutter/material.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:oxyshine/common/widgets/custom_shapes/containers/primary_header_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          // Profile Picture and Name
          TPrimaryHeaderContainer(
            height: 360,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 70),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/doctor/doctor_1.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Sanjeev Sharma',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'sanjeev@gmail.com',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text('Upgrade to PRO'),
                  ),
                ],
              ),
            ),
          ),

          // Menu Options
          Expanded(
            child: ListView(
              children: [
                buildMenuItem(Icons.privacy_tip, 'Privacy'),
                buildMenuItem(Icons.history, 'Purchase History'),
                buildMenuItem(Icons.help_outline, 'Help & Support'),
                buildMenuItem(Icons.settings, 'Settings'),
                buildMenuItem(Icons.person_add_alt, 'Invite a Friend'),
                buildMenuItem(Icons.logout, 'Logout'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: ListTile(
        minTileHeight: 60,
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        trailing: Icon(Ionicons.chevron_forward_outline, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
