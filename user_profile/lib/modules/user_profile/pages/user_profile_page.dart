import 'package:flutter/material.dart';
import 'package:user_profile/modules/user_profile/widgets/custom_bottom_navbar.dart';
import 'package:user_profile/modules/user_profile/widgets/user_profile.dart';

import '../../../enums.dart';

class UserProfilePage extends StatelessWidget {
  final int? index;

  const UserProfilePage({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: UserProfile(),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
