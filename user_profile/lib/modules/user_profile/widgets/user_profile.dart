import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(),
        SizedBox(
          height: 20,
        ),
        ListView(
          shrinkWrap: true,
          children: [
            ProfileMenu(
              pathIcon: "assets/icons/User_Icon.svg",
              text: "My Account",
              press: () {
                print('test action inside a signle scroll view');
              },
            ),
            ProfileMenu(
              pathIcon: "assets/icons/Bell.svg",
              text: "Notification",
              press: () {},
            ),
            ProfileMenu(
              pathIcon: "assets/icons/Settings.svg",
              text: "Settings",
              press: () {},
            ),
            ProfileMenu(
              pathIcon: "assets/icons/Question mark.svg",
              text: "Questions",
              press: () {},
            ),
            ProfileMenu(
              pathIcon: "assets/icons/Log out.svg",
              text: "Log Out",
              press: () {},
            )
          ],
        ),
      ],
    );
  }
}
